.class public Lcom/raizlabs/android/dbflow/sql/language/ExistenceOperator;
.super Ljava/lang/Object;
.source "ExistenceOperator.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# instance fields
.field private innerWhere:Lcom/raizlabs/android/dbflow/sql/language/Where;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ExistenceOperator;->innerWhere:Lcom/raizlabs/android/dbflow/sql/language/Where;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXISTS"

    invoke-virtual {p1, v1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    return-void
.end method

.method public columnName()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method not valid for ExistenceOperator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 63
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    .line 64
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/ExistenceOperator;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V

    .line 65
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSeparator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public operation()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;
    .locals 1

    .line 37
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Method not valid for ExistenceOperator"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public separator()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method not valid for ExistenceOperator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ExistenceOperator;->innerWhere:Lcom/raizlabs/android/dbflow/sql/language/Where;

    return-object v0
.end method

.method public where(Lcom/raizlabs/android/dbflow/sql/language/Where;)Lcom/raizlabs/android/dbflow/sql/language/ExistenceOperator;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/ExistenceOperator;->innerWhere:Lcom/raizlabs/android/dbflow/sql/language/Where;

    return-object p0
.end method
