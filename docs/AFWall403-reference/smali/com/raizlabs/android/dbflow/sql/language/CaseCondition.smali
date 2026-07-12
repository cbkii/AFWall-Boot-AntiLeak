.class public Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;
.super Ljava/lang/Object;
.source "CaseCondition.java"

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
.field private final caze:Lcom/raizlabs/android/dbflow/sql/language/Case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/Case<",
            "TTReturn;>;"
        }
    .end annotation
.end field

.field private isThenPropertySet:Z

.field private property:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

.field private sqlOperator:Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

.field private thenProperty:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

.field private thenValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTReturn;"
        }
    .end annotation
.end field

.field private whenValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTReturn;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/Case;Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/Case<",
            "TTReturn;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->caze:Lcom/raizlabs/android/dbflow/sql/language/Case;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->sqlOperator:Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    return-void
.end method

.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/Case;Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/Case<",
            "TTReturn;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->caze:Lcom/raizlabs/android/dbflow/sql/language/Case;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->property:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    return-void
.end method

.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/Case;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/Case<",
            "TTReturn;>;TTReturn;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->caze:Lcom/raizlabs/android/dbflow/sql/language/Case;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->whenValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 4

    .line 59
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    const-string v1, " WHEN "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->caze:Lcom/raizlabs/android/dbflow/sql/language/Case;

    .line 60
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/Case;->isEfficientCase()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->property:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->whenValue:Ljava/lang/Object;

    .line 61
    :goto_0
    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;->convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->sqlOperator:Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 63
    invoke-interface {v1, v0}, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V

    :goto_1
    const-string v1, " THEN "

    .line 65
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->isThenPropertySet:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->thenProperty:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->thenValue:Ljava/lang/Object;

    .line 66
    :goto_2
    invoke-static {v3, v2}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;->convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 68
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Case;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Case<",
            "TTReturn;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->thenProperty:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->isThenPropertySet:Z

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->caze:Lcom/raizlabs/android/dbflow/sql/language/Case;

    return-object p1
.end method

.method public then(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Case;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTReturn;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Case<",
            "TTReturn;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->thenValue:Ljava/lang/Object;

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->caze:Lcom/raizlabs/android/dbflow/sql/language/Case;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
