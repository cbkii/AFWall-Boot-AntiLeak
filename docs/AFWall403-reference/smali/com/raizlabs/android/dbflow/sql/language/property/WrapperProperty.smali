.class public Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;
.super Lcom/raizlabs/android/dbflow/sql/language/property/Property;
.source "WrapperProperty.java"


# annotations
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
.field private databaseProperty:Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty<",
            "TV;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invertProperty()Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;->databaseProperty:Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;->table:Ljava/lang/Class;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;->databaseProperty:Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;->databaseProperty:Lcom/raizlabs/android/dbflow/sql/language/property/WrapperProperty;

    return-object v0
.end method
