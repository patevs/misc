---
title: 01 - Hello Android
tags: [Notebooks/Mobile Dev]
---

# 01 - Hello Android

> Introduction to mobile application development on the `Android platform`.

Developed by Google, [**`Android`**](https://en.wikipedia.org/wiki/Android_(operating_system)) is the world's most popular operating system with the platform powering billions of mobile devices world-wide.

----

To get started with Android development begin downloading and installing the [Android Studio](https://developer.android.com/studio/) **`IDE`** (**I**nteractive **D**evelopment **E**nvironment) which includes tools for developing applications on any Android platform. 

[Android Studio Downloads](https://developer.android.com/studio/#downloads)

The basic Android Studio installation will include the latest Android **`SDK`** (**S**oftware **D**evelopment **K**it) and optionally includes an Android device emulator called **`AVD`** (**A**ndroid **V**irtual **D**evice) which is invaluable for testing applications under development.

[Android Developers Documentation](https://developer.android.com/guide/)

----

## Core Development Concepts

* GUI components are called **`Views`**

* **`Layouts`** are views that contain other views

* **`TextView`** displays text

* **`ImageView`** displays images

* **`MainActivity`** class will generally contain the applications logic
  * Generated as a subclass of **`AppCompactActivity`** which is an indirect subclass of **`Activity`**
  
**Example:**
  
```java
public class MainActivity extends Activity { ... }
```

Every **`Activity`** class must implement (override) the **`onCreate`** method.

**Example:**

```java
@override
protected void onCreate(Bundle b){
  // invoke onCreate method of super (parent) class
  super.onCreate(b);
  // set current activity (view). This is called 'inflating the view'
  setContentView(R.layout.ActivityMain);
  ...
}
```

----

## Key Terms

* **`Bundle`** parameter contains the activities saved state. Usually set in `onPause` or `onSaveInstanceState` methods.

* **`R`** contains generated resources

* **`R.drawable`** contains constants for drawable items such as images.

* **`R.id`** contains constants for views in XML layout files.

* **`R.layout`** contains constants for each XML layout file.

* **`R.string`** contains constants for each string in strings.xml

----

<br />
<br />
