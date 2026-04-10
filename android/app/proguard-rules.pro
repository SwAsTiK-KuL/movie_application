-keep class io.flutter.** { *; }
-keep class com.example.platform_commons.** { *; }

-dontwarn com.google.android.play.core.**
-keep class com.google.android.play.core.** { *; }
-dontwarn io.flutter.embedding.android.FlutterPlayStoreSplitApplication
-dontwarn io.flutter.embedding.engine.deferredcomponents.**

-dontwarn okhttp3.**
-dontwarn okio.**

-keep class androidx.work.** { *; }
-dontwarn androidx.work.**

-keep class dev.fluttercommunity.workmanager.** { *; }
-dontwarn dev.fluttercommunity.workmanager.**

-dontwarn org.sqlite.**
-dontwarn org.sqlite.database.**

-keepattributes Signature
-keepattributes *Annotation*
-keepattributes EnclosingMethod
-keepattributes InnerClasses
