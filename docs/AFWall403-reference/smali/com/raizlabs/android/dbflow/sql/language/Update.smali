.class public Lcom/raizlabs/android/dbflow/sql/language/Update;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/Query;"
    }
.end annotation


# instance fields
.field private conflictAction:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field private final table:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Update;->conflictAction:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Update;->table:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Update;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/annotation/ConflictAction;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Update<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Update;->conflictAction:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Update;->conflictAction:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    if-eqz v1, :cond_0

    .line 101
    sget-object v2, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OR"

    .line 102
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Update;->conflictAction:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Update;->table:Ljava/lang/Class;

    .line 104
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 105
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

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Update;->table:Ljava/lang/Class;

    return-object v0
.end method

.method public or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Update;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/annotation/ConflictAction;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Update<",
            "TTModel;>;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Update;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Update;

    move-result-object p1

    return-object p1
.end method

.method public orAbort()Lcom/raizlabs/android/dbflow/sql/language/Update;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Update<",
            "TTModel;>;"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Update;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Update;

    move-result-object v0

    return-object v0
.end method

.method public orFail()Lcom/raizlabs/android/dbflow/sql/language/Update;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Update<",
            "TTModel;>;"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Update;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Update;

    move-result-object v0

    return-object v0
.end method

.method public orIgnore()Lcom/raizlabs/android/dbflow/sql/language/Update;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Update<",
            "TTModel;>;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Update;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Update;

    move-result-object v0

    return-object v0
.end method

.method public orReplace()Lcom/raizlabs/android/dbflow/sql/language/Update;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Update<",
            "TTModel;>;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Update;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Update;

    move-result-object v0

    return-object v0
.end method

.method public orRollback()Lcom/raizlabs/android/dbflow/sql/language/Update;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Update<",
            "TTModel;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Update;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/Update;

    move-result-object v0

    return-object v0
.end method

.method public varargs set([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Set<",
            "TTModel;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Set;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Update;->table:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Set;-><init>(Lcom/raizlabs/android/dbflow/sql/Query;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Set;->conditions([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Set;

    move-result-object p1

    return-object p1
.end method
