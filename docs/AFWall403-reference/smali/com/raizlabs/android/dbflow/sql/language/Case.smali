.class public Lcom/raizlabs/android/dbflow/sql/language/Case;
.super Ljava/lang/Object;
.source "Case.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TReturn:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/Query;"
    }
.end annotation


# instance fields
.field private caseColumn:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

.field private caseConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/CaseCondition<",
            "TTReturn;>;>;"
        }
    .end annotation
.end field

.field private columnName:Ljava/lang/String;

.field private efficientCase:Z

.field private elseSpecified:Z

.field private elseValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTReturn;"
        }
    .end annotation
.end field

.field private endSpecified:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->caseConditions:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->elseSpecified:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->efficientCase:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->endSpecified:Z

    return-void
.end method

.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->caseConditions:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->elseSpecified:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->efficientCase:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->endSpecified:Z

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->caseColumn:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->efficientCase:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public _else(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Case;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTReturn;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Case<",
            "TTReturn;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->elseValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->elseSpecified:Z

    return-object p0
.end method

.method public end()Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Lcom/raizlabs/android/dbflow/sql/language/Case<",
            "TTReturn;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Case;->end(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public end(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Lcom/raizlabs/android/dbflow/sql/language/Case<",
            "TTReturn;>;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->endSpecified:Z

    if-eqz p1, :cond_0

    .line 91
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->columnName:Ljava/lang/String;

    .line 93
    :cond_0
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Case;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object p1
.end method

.method public endAsOperator()Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Case;->end()Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->op(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 5

    .line 119
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    const-string v1, " CASE"

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Case;->isEfficientCase()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->caseColumn:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    invoke-static {v3, v2}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;->convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->caseConditions:Ljava/util/List;

    const-string v3, ""

    .line 124
    invoke-static {v3, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->elseSpecified:Z

    if-eqz v1, :cond_1

    const-string v1, " ELSE "

    .line 127
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->elseValue:Ljava/lang/Object;

    invoke-static {v4, v2}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;->convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->endSpecified:Z

    if-eqz v1, :cond_3

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " END "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->columnName:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 132
    :cond_3
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isEfficientCase()Z
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->efficientCase:Z

    return v0
.end method

.method public when(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/CaseCondition<",
            "TTReturn;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->efficientCase:Z

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Case;Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)V

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->caseConditions:Ljava/util/List;

    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "When using the efficient CASE method,you must pass in value only, not condition."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public when(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/CaseCondition<",
            "TTReturn;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->efficientCase:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Case;Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->caseConditions:Ljava/util/List;

    .line 69
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "When not using the efficient CASE method, you must pass in the SQLOperator as a parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public when(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTReturn;)",
            "Lcom/raizlabs/android/dbflow/sql/language/CaseCondition<",
            "TTReturn;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->efficientCase:Z

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Case;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Case;->caseConditions:Ljava/util/List;

    .line 58
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "When not using the efficient CASE method, you must pass in the SQLOperator as a parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
