
public class Mother <T> {
    private Class<T> clazz;
    private Map<String, Object> objectMap = new HashMap<>();
    private Mother(Class<T> clazz){
        this.clazz = clazz;
    }

    public static <T> Mother<T> forClass(Class<T> clazz) {
        return new Mother<>(clazz);
    }

    public static <E> E updateField(E targetObject, String fieldName, Object value) {
        try {
            Field declaredField = targetObject.getClass().getDeclaredField(fieldName);
            declaredField.setAccessible(true);
            declaredField.set(targetObject, value);
            declaredField.setAccessible(false);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            e.printStackTrace();
        }

        return targetObject;
    }

    public Mother<T> with(String propertyName, Object value) {
        objectMap.put(propertyName, value);
        return this;
    }

    public T build(){
        try {
            T newInstance = clazz.newInstance();
            for (Map.Entry<String, Object> propertyEntry : objectMap.entrySet()) {
                updateField(newInstance, propertyEntry.getKey(), propertyEntry.getValue());
            }
            return newInstance;
        } catch (InstantiationException | IllegalAccessException e) {
            e.printStackTrace();
        }
        return null;
    }
}

class Item {
    private String name;
    private int quantity;

    @Override
    public String toString() {
        return name + " - " + quantity;
    }
}

class ItemCreator {
    public void printItems() {
        Item hamam = Mother.forClass(Item.class).with("name", "Hamam").with("quantity", 123).build();
        Log.d(TAG, "printItems: " + hamam.toString());
    }
}
