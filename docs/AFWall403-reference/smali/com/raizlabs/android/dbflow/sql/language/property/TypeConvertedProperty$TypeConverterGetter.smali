.class public interface abstract Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;
.super Ljava/lang/Object;
.source "TypeConvertedProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TypeConverterGetter"
.end annotation


# virtual methods
.method public abstract getTypeConverter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/converter/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/converter/TypeConverter;"
        }
    .end annotation
.end method
