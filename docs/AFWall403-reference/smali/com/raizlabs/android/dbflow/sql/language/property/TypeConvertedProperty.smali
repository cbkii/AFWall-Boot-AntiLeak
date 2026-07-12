.class public Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;
.super Lcom/raizlabs/android/dbflow/sql/language/property/Property;
.source "TypeConvertedProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private convertToDB:Z

.field private databaseProperty:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty<",
            "TV;TT;>;"
        }
    .end annotation
.end field

.field private final getter:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;ZLcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            "Z",
            "Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    iput-boolean p3, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->convertToDB:Z

    iput-object p4, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->getter:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;ZLcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->convertToDB:Z

    iput-object p4, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->getter:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;

    return-void
.end method

.method static synthetic access$000(Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->getter:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;

    return-object p0
.end method


# virtual methods
.method protected getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TV;>;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->getter:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->table:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;->getTypeConverter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/converter/TypeConverter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->convertToDB:Z

    invoke-static {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->op(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;Lcom/raizlabs/android/dbflow/converter/TypeConverter;Z)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    return-object v0
.end method

.method public invertProperty()Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->databaseProperty:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->table:Ljava/lang/Class;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    iget-boolean v3, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->convertToDB:Z

    xor-int/lit8 v3, v3, 0x1

    new-instance v4, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$1;

    invoke-direct {v4, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$1;-><init>(Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;ZLcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->databaseProperty:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->databaseProperty:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;

    return-object v0
.end method

.method public bridge synthetic withTable(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->withTable(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public withTable(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TV;>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->withTable(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->getTable()Ljava/lang/Class;

    move-result-object v1

    iget-boolean v2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->convertToDB:Z

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;->getter:Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;ZLcom/raizlabs/android/dbflow/sql/language/property/TypeConvertedProperty$TypeConverterGetter;)V

    return-object v0
.end method
