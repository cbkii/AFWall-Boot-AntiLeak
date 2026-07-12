.class public Lcom/raizlabs/android/dbflow/sql/language/IndexedBy;
.super Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;
.source "IndexedBy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private final indexProperty:Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final whereBase:Lcom/raizlabs/android/dbflow/sql/language/WhereBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/WhereBase<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;Lcom/raizlabs/android/dbflow/sql/language/WhereBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/WhereBase<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 26
    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/sql/language/WhereBase;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/IndexedBy;->indexProperty:Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/IndexedBy;->whereBase:Lcom/raizlabs/android/dbflow/sql/language/WhereBase;

    return-void
.end method


# virtual methods
.method public getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/IndexedBy;->whereBase:Lcom/raizlabs/android/dbflow/sql/language/WhereBase;

    .line 47
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/WhereBase;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/IndexedBy;->whereBase:Lcom/raizlabs/android/dbflow/sql/language/WhereBase;

    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/sql/language/WhereBase;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    const-string v1, " INDEXED BY "

    .line 40
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/IndexedBy;->indexProperty:Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;->getIndexName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/Query;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/IndexedBy;->whereBase:Lcom/raizlabs/android/dbflow/sql/language/WhereBase;

    .line 34
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/WhereBase;->getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/Query;

    move-result-object v0

    return-object v0
.end method
