package linkshare

import topic.Topic

class Enums {
    public enum Visibility {
        PUBLIC, PRIVATE

        public static List<Visibility> allVisibility() {
            return [PUBLIC, PRIVATE]
        }
    }
}
