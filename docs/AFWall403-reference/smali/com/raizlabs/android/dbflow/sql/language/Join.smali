.class public Lcom/raizlabs/android/dbflow/sql/language/Join;
.super Ljava/lang/Object;
.source "Join.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        "TFromModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/Query;"
    }
.end annotation


# instance fields
.field private alias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

.field private from:Lcom/raizlabs/android/dbflow/sql/language/From;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/From<",
            "TTFromModel;>;"
        }
    .end annotation
.end field

.field private onGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

.field private final table:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private type:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

.field private using:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/From;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/From<",
            "TTFromModel;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->using:Ljava/util/List;

    .line 94
    invoke-interface {p3}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;->getTable()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->table:Ljava/lang/Class;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->from:Lcom/raizlabs/android/dbflow/sql/language/From;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->type:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 97
    invoke-static {p3}, Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;->from(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->alias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/From;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/From<",
            "TTFromModel;>;",
            "Ljava/lang/Class<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->using:Ljava/util/List;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->from:Lcom/raizlabs/android/dbflow/sql/language/From;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->table:Ljava/lang/Class;

    iput-object p3, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->type:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 89
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->alias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    return-void
.end method

.method private checkNatural()V
    .locals 2

    .line 183
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->type:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot specify a clause for this join if its NATURAL. Specifying a clause would have no effect. Call end() to continue the query."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTModel;TTFromModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->alias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    .line 109
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->alias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    return-object p0
.end method

.method public end()Lcom/raizlabs/android/dbflow/sql/language/From;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/From<",
            "TTFromModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->from:Lcom/raizlabs/android/dbflow/sql/language/From;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    .line 152
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->type:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 154
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    const-string v1, "JOIN"

    .line 156
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->alias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    .line 158
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->getFullQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 162
    sget-object v1, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->type:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->onGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    if-eqz v1, :cond_0

    const-string v1, "ON"

    .line 164
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->onGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 166
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->using:Ljava/util/List;

    .line 168
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "USING ("

    .line 169
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->using:Ljava/util/List;

    .line 170
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendList(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    const-string v2, ")"

    .line 171
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->table:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs on([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/From;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/From<",
            "TTFromModel;>;"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/Join;->checkNatural()V

    .line 124
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->onGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 125
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->andAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->from:Lcom/raizlabs/android/dbflow/sql/language/From;

    return-object p1
.end method

.method public varargs using([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/From;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/From<",
            "TTFromModel;>;"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/Join;->checkNatural()V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->using:Ljava/util/List;

    .line 138
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->from:Lcom/raizlabs/android/dbflow/sql/language/From;

    return-object p1
.end method
