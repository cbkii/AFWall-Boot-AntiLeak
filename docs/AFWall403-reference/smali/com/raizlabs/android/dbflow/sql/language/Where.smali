.class public Lcom/raizlabs/android/dbflow/sql/language/Where;
.super Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;
.source "Where.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;
.implements Lcom/raizlabs/android/dbflow/sql/language/Transformable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/language/Transformable<",
        "TTModel;>;"
    }
.end annotation


# static fields
.field private static final VALUE_UNSET:I = -0x1


# instance fields
.field private final groupByList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            ">;"
        }
    .end annotation
.end field

.field private havingGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

.field private limit:I

.field private offset:I

.field private operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

.field private final orderByList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/OrderBy;",
            ">;"
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
.method public varargs constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/WhereBase;[Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/WhereBase<",
            "TTModel;>;[",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/language/WhereBase;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;-><init>(Ljava/lang/Class;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->groupByList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderByList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->limit:I

    iput v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->offset:I

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->whereBase:Lcom/raizlabs/android/dbflow/sql/language/WhereBase;

    .line 58
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 59
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->havingGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 61
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->andAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-void
.end method

.method private checkSelect(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->whereBase:Lcom/raizlabs/android/dbflow/sql/language/WhereBase;

    .line 258
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/WhereBase;->getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/Query;

    move-result-object v0

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/Select;

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please use "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(). The beginning is not a ISelect"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public and(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 69
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->and(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-object p0
.end method

.method public andAll(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 87
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->andAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-object p0
.end method

.method public varargs andAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;
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

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 96
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->andAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-object p0
.end method

.method public exists(Lcom/raizlabs/android/dbflow/sql/language/Where;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/Where;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 176
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/ExistenceOperator;

    invoke-direct {v1}, Lcom/raizlabs/android/dbflow/sql/language/ExistenceOperator;-><init>()V

    .line 177
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/ExistenceOperator;->where(Lcom/raizlabs/android/dbflow/sql/language/Where;)Lcom/raizlabs/android/dbflow/sql/language/ExistenceOperator;

    move-result-object p1

    .line 176
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->and(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-object p0
.end method

.method public getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->whereBase:Lcom/raizlabs/android/dbflow/sql/language/WhereBase;

    .line 184
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/WhereBase;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->whereBase:Lcom/raizlabs/android/dbflow/sql/language/WhereBase;

    .line 189
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/WhereBase;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 191
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WHERE"

    invoke-virtual {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->groupByList:Ljava/util/List;

    const-string v2, ","

    .line 192
    invoke-static {v2, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "GROUP BY"

    invoke-virtual {v0, v3, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->havingGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 193
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HAVING"

    invoke-virtual {v0, v3, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderByList:Ljava/util/List;

    .line 194
    invoke-static {v2, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORDER BY"

    invoke-virtual {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iget v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->limit:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const-string v3, "LIMIT"

    .line 197
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_0
    iget v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->offset:I

    if-le v1, v2, :cond_1

    const-string v2, "OFFSET"

    .line 200
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 203
    :cond_1
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhereBase()Lcom/raizlabs/android/dbflow/sql/language/WhereBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/WhereBase<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->whereBase:Lcom/raizlabs/android/dbflow/sql/language/WhereBase;

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->groupByList:Ljava/util/List;

    .line 102
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs groupBy([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->groupByList:Ljava/util/List;

    .line 109
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
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

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->havingGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 122
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->andAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-object p0
.end method

.method public limit(I)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    iput p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->limit:I

    return-object p0
.end method

.method public offset(I)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    iput p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->offset:I

    return-object p0
.end method

.method public or(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 78
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->or(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-object p0
.end method

.method public orderBy(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderByList:Ljava/util/List;

    .line 128
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;

    invoke-direct {v1, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
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

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderByList:Ljava/util/List;

    .line 140
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public orderBy(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/Where<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderByList:Ljava/util/List;

    .line 134
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
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

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderByList:Ljava/util/List;

    .line 152
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public query()Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Where;->whereBase:Lcom/raizlabs/android/dbflow/sql/language/WhereBase;

    .line 213
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/WhereBase;->getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/Query;

    move-result-object v0

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/Select;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->getQuery()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p1

    goto :goto_0

    .line 216
    :cond_0
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p1

    :goto_0
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

    .line 235
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->checkSelect(Ljava/lang/String;)V

    .line 236
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

    .line 247
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->checkSelect(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->limit(I)Lcom/raizlabs/android/dbflow/sql/language/Where;

    .line 249
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->querySingle()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
