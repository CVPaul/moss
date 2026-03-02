# Moss 智能管家 - ProGuard Rules
# Flutter 相关规则
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Gson / JSON serialization
-keepattributes Signature
-keepattributes *Annotation*
-dontwarn sun.misc.**
-keep class com.google.gson.** { *; }

# OkHttp
-dontwarn okhttp3.**
-dontwarn okio.**

# 保留自定义 Application
-keep class com.moss.assistant.** { *; }

# 不混淆枚举
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# 保留 Parcelable
-keepclassmembers class * implements android.os.Parcelable {
    static ** CREATOR;
}

# 保留 native 方法
-keepclasseswithmembernames class * {
    native <methods>;
}
