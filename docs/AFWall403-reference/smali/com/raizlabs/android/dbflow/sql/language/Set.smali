.class public Lcom/raizlabs/android/dbflow/sql/language/Set;
.super Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;
.source "Set.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/WhereBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/language/WhereBase<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

.field private update:Lcom/raizlabs/android/dbflow/sql/Query;


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

    .line 21
    invoke-direct {p0, p2}, Lcom/raizlabs/android/dbflow/sql/language/BaseTransformable;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Set;->update:Lcom/raizlabs/android/dbflow/sql/Query;

    .line 23
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->setAllCommaSeparated(Z)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Set;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-void
.end method


# virtual methods
.method public conditionValues(Landroid/content/ContentValues;)Lcom/raizlabs/android/dbflow/sql/language/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Set<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Set;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 40
    invoke-static {p1, v0}, Lcom/raizlabs/android/dbflow/sql/SqlUtils;->addContentValues(Landroid/content/ContentValues;Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;)V

    return-object p0
.end method

.method public varargs conditions([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Set<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Set;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 34
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->andAll([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    return-object p0
.end method

.method public getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    .line 62
    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Set;->update:Lcom/raizlabs/android/dbflow/sql/Query;

    .line 47
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/sql/Query;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    const-string v1, "SET "

    .line 48
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Set;->operatorGroup:Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    .line 49
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/Query;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Set;->update:Lcom/raizlabs/android/dbflow/sql/Query;

    return-object v0
.end method
