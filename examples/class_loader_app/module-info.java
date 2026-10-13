module class_loader.app {
    requires java.base;
    requires java.xml;
    requires java.sql;
    requires java.management;

    requires chemistry.api;

    exports class_loader_app;
}
