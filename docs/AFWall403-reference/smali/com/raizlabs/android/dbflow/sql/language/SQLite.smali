.class public Lcom/raizlabs/android/dbflow/sql/language/SQLite;
.super Ljava/lang/Object;
.source "SQLite.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _case(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Case;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TReturn:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Case<",
            "TTReturn;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Case;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/Case;-><init>(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static _case(Lcom/raizlabs/android/dbflow/sql/language/property/Property;)Lcom/raizlabs/android/dbflow/sql/language/Case;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TReturn:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TTReturn;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Case<",
            "TTReturn;>;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Case;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/Case;-><init>(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static caseWhen(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TReturn:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/CaseCondition<",
            "TTReturn;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Case;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/Case;-><init>()V

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/Case;->when(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/CaseCondition;

    move-result-object p0

    return-object p0
.end method

.method public static createTrigger(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Trigger;
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->create(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Trigger;

    move-result-object p0

    return-object p0
.end method

.method public static delete()Lcom/raizlabs/android/dbflow/sql/language/Delete;
    .locals 1

    .line 61
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Delete;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/Delete;-><init>()V

    return-object v0
.end method

.method public static delete(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;
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

    .line 73
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->delete()Lcom/raizlabs/android/dbflow/sql/language/Delete;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/Delete;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object p0

    return-object p0
.end method

.method public static index(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Index;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Index<",
            "TTModel;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Index;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/Index;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static insert(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/Insert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Insert<",
            "TTModel;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Insert;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/Insert;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;
    .locals 1

    .line 21
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Select;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/Select;-><init>([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static varargs selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;
    .locals 3

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Select;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/Method;->count([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Select;-><init>([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static update(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/Update;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Update<",
            "TTModel;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Update;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/Update;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
