.class public abstract Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;
.super Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;
.source "BaseTransformable.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/Transformable;
.implements Lcom/raizlabs/android/dbflow/sql/language/WhereBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/language/Transformable<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/language/WhereBase<",
        "TTModel;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private checkSelect(Ljava/lang/String;)V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/Query;

    move-result-object v0

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/Select;

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please use "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(). The beginning is not a Select"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs groupBy([Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 44
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->groupBy([Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    return-object p1
.end method

.method public varargs groupBy([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 50
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->groupBy([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    return-object p1
.end method

.method public varargs having([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 92
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->having([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    return-object p1
.end method

.method public limit(I)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 80
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->limit(I)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    return-object p1
.end method

.method public offset(I)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 86
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->offset(I)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 56
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderBy(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Lcom/raizlabs/android/dbflow/sql/language/OrderBy;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/OrderBy;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 74
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderBy(Lcom/raizlabs/android/dbflow/sql/language/OrderBy;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 62
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderBy(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    return-object p1
.end method

.method public orderByAll(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/OrderBy;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 68
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderByAll(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    return-object p1
.end method

.method public query()Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 33
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->query()Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 38
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p1

    return-object p1
.end method

.method public queryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    const-string v0, "query"

    .line 98
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->checkSelect(Ljava/lang/String;)V

    .line 99
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->queryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public querySingle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    const-string v0, "query"

    .line 104
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->checkSelect(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;->limit(I)Lcom/raizlabs/android/dbflow/sql/language/Where;

    .line 106
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->querySingle()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Where;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;-><init>(Lcom/raizlabs/android/dbflow/sql/language/WhereBase;[Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)V

    return-object v0
.end method
