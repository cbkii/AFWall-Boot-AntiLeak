.class public Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
.super Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;
.source "OperatorGroup.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;",
        "Lcom/raizlabs/android/dbflow/sql/Query;",
        "Ljava/lang/Iterable<",
        "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
        ">;"
    }
.end annotation


# instance fields
.field private allCommaSeparated:Z

.field private final conditionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ">;"
        }
    .end annotation
.end field

.field private isChanged:Z

.field private query:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

.field private useParenthesis:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-void
.end method

.method protected constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->conditionsList:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->useParenthesis:Z

    const-string p1, "AND"

    .line 63
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->separator:Ljava/lang/String;

    return-void
.end method

.method public static clause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 1

    .line 25
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;-><init>()V

    return-object v0
.end method

.method public static varargs clause([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 1

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;-><init>()V

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->andAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p0

    return-object p0
.end method

.method private getQuerySafe()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 1

    .line 237
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    .line 238
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V

    return-object v0
.end method

.method public static nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 2

    .line 41
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->setUseParenthesis(Z)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    return-object v0
.end method

.method public static varargs nonGroupingClause([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 2

    .line 48
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->setUseParenthesis(Z)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->andAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p0

    return-object p0
.end method

.method private operator(Ljava/lang/String;Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 0

    if-eqz p2, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->setPreviousSeparator(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->conditionsList:Ljava/util/List;

    .line 171
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->isChanged:Z

    :cond_0
    return-object p0
.end method

.method private setPreviousSeparator(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->conditionsList:Ljava/util/List;

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->conditionsList:Ljava/util/List;

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;->separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    :cond_0
    return-void
.end method


# virtual methods
.method public and(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 1

    const-string v0, "AND"

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->operator(Ljava/lang/String;Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    return-object p1
.end method

.method public andAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;"
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 135
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->and(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs andAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 3

    .line 122
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 123
    invoke-virtual {p0, v2}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->and(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V
    .locals 4

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->conditionsList:Ljava/util/List;

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->useParenthesis:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const-string v1, "("

    .line 181
    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->conditionsList:Ljava/util/List;

    .line 184
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 185
    invoke-interface {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V

    iget-boolean v3, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->allCommaSeparated:Z

    if-nez v3, :cond_1

    .line 186
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;->hasSeparator()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_1

    .line 187
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;->separator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    .line 189
    invoke-virtual {p1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->useParenthesis:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    const-string v0, ")"

    .line 193
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_4
    return-void
.end method

.method public getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->conditionsList:Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->isChanged:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getQuerySafe()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->query:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->query:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->conditionsList:Ljava/util/List;

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 1

    const-string v0, "OR"

    .line 105
    invoke-direct {p0, v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->operator(Ljava/lang/String;Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    return-object p1
.end method

.method public orAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;"
        }
    .end annotation

    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 159
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->or(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs orAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 3

    .line 146
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 147
    invoke-virtual {p0, v2}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->or(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setAllCommaSeparated(Z)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->allCommaSeparated:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->isChanged:Z

    return-object p0
.end method

.method public setUseParenthesis(Z)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;
    .locals 0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->useParenthesis:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->isChanged:Z

    return-object p0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->conditionsList:Ljava/util/List;

    .line 223
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 219
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getQuerySafe()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
