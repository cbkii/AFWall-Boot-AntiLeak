.class public Lcom/raizlabs/android/dbflow/sql/language/Method$Cast;
.super Ljava/lang/Object;
.source "Method.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/language/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cast"
.end annotation


# instance fields
.field private final property:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Method$Cast;->property:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Lcom/raizlabs/android/dbflow/sql/language/Method$1;)V
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method$Cast;-><init>(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-void
.end method


# virtual methods
.method public as(Lcom/raizlabs/android/dbflow/sql/SQLiteType;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 4

    .line 278
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Method$Cast;->property:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;->getTable()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Method$Cast;->property:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 279
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 281
    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->shouldAddIdentifierToAliasName(Z)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v2

    .line 282
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    .line 284
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/language/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    aput-object v0, v1, v3

    const-string v0, "CAST"

    invoke-direct {p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object p1
.end method
