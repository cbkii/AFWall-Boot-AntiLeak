.class public Lcom/raizlabs/android/dbflow/sql/language/From;
.super Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;
.source "From.java"


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
.field private final joins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/Join;",
            ">;"
        }
    .end annotation
.end field

.field private queryBase:Lcom/raizlabs/android/dbflow/sql/Query;

.field private tableAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/Query;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/Query;",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p2}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;-><init>(Ljava/lang/Class;)V

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->joins:Ljava/util/List;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->queryBase:Lcom/raizlabs/android/dbflow/sql/Query;

    return-void
.end method

.method private getTableAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->tableAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/From;->getTable()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->tableAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->tableAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    return-object v0
.end method


# virtual methods
.method public as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/From;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/From<",
            "TTModel;>;"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/From;->getTableAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->tableAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    return-object p0
.end method

.method public crossJoin(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->CROSS:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->join(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public crossJoin(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->CROSS:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->join(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public getAssociatedTables()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 243
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/From;->getTable()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->joins:Ljava/util/List;

    .line 244
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/sql/language/Join;

    .line 245
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/Join;->getTable()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->queryBase:Lcom/raizlabs/android/dbflow/sql/Query;

    .line 200
    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/Delete;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->DELETE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    :goto_0
    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .line 205
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->queryBase:Lcom/raizlabs/android/dbflow/sql/Query;

    .line 206
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/sql/Query;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->queryBase:Lcom/raizlabs/android/dbflow/sql/Query;

    .line 207
    instance-of v1, v1, Lcom/raizlabs/android/dbflow/sql/language/Update;

    if-nez v1, :cond_0

    const-string v1, "FROM "

    .line 208
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/From;->getTableAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->queryBase:Lcom/raizlabs/android/dbflow/sql/Query;

    .line 213
    instance-of v1, v1, Lcom/raizlabs/android/dbflow/sql/language/Select;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->joins:Ljava/util/List;

    .line 214
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->joins:Ljava/util/List;

    .line 217
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/sql/language/Join;

    .line 218
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/Join;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 224
    :cond_3
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/Query;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->queryBase:Lcom/raizlabs/android/dbflow/sql/Query;

    return-object v0
.end method

.method public indexedBy(Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;)Lcom/raizlabs/android/dbflow/sql/language/IndexedBy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/IndexedBy<",
            "TTModel;>;"
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/IndexedBy;

    invoke-direct {v0, p1, p0}, Lcom/raizlabs/android/dbflow/sql/language/IndexedBy;-><init>(Lcom/raizlabs/android/dbflow/sql/language/property/IndexProperty;Lcom/raizlabs/android/dbflow/sql/language/WhereBase;)V

    return-object v0
.end method

.method public innerJoin(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->INNER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->join(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public innerJoin(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->INNER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->join(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public join(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTJoin;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Join;

    invoke-direct {v0, p0, p2, p1}, Lcom/raizlabs/android/dbflow/sql/language/Join;-><init>(Lcom/raizlabs/android/dbflow/sql/language/From;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)V

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->joins:Ljava/util/List;

    .line 94
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public join(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTJoin;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Join;

    invoke-direct {v0, p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Join;-><init>(Lcom/raizlabs/android/dbflow/sql/language/From;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)V

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/From;->joins:Ljava/util/List;

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public leftOuterJoin(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->LEFT_OUTER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->join(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public leftOuterJoin(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->LEFT_OUTER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->join(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public naturalJoin(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->join(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public naturalJoin(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->join(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method
