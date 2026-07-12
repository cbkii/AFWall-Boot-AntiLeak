.class Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$1;
.super Ljava/lang/Object;
.source "TypeConvertedProperty.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->invertProperty()Lcom/raizlabs/android/dbflow/sql/language/property/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$1;->this$0:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeConverter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/converter/TypeConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/converter/TypeConverter;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$1;->this$0:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;

    .line 68
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->access$000(Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;->getTypeConverter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/converter/TypeConverter;

    move-result-object p1

    return-object p1
.end method
