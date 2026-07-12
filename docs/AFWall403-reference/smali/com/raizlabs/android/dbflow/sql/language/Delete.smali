.class public Lcom/raizlabs/android/dbflow/sql/language/Delete;
.super Ljava/lang/Object;
.source "Delete.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs table(Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;[",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")V"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Delete;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/Delete;-><init>()V

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/Delete;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->executeUpdateDelete()J

    return-void
.end method

.method public static varargs tables([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 31
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    new-array v4, v1, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 32
    invoke-static {v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/Delete;->table(Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/From<",
            "TTModel;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/From;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/From;-><init>(Lcom/raizlabs/android/dbflow/sql/Query;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    const-string v1, "DELETE"

    .line 51
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
