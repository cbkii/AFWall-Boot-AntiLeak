.class public Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;
.super Ljava/lang/Object;
.source "TriggerMethod.java"

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


# static fields
.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final INSERT:Ljava/lang/String; = "INSERT"

.field public static final UPDATE:Ljava/lang/String; = "UPDATE"


# instance fields
.field forEachRow:Z

.field private final methodName:Ljava/lang/String;

.field onTable:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private properties:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

.field final trigger:Lcom/raizlabs/android/dbflow/sql/language/Trigger;

.field private whenCondition:Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;


# direct methods
.method varargs constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/Trigger;Ljava/lang/String;Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/Trigger;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTModel;>;[",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->forEachRow:Z

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->trigger:Lcom/raizlabs/android/dbflow/sql/language/Trigger;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->methodName:Ljava/lang/String;

    iput-object p3, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->onTable:Ljava/lang/Class;

    if-eqz p4, :cond_1

    .line 34
    array-length p1, p4

    if-lez p1, :cond_1

    aget-object p1, p4, v0

    if-eqz p1, :cond_1

    const-string p1, "UPDATE"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p4, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->properties:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An Trigger OF can only be used with an UPDATE method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public begin(Lcom/raizlabs/android/dbflow/sql/Query;)Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/Query;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger<",
            "TTModel;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;-><init>(Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;Lcom/raizlabs/android/dbflow/sql/Query;)V

    return-object v0
.end method

.method public forEachRow()Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->forEachRow:Z

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->trigger:Lcom/raizlabs/android/dbflow/sql/language/Trigger;

    .line 76
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->methodName:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->properties:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    if-eqz v1, :cond_0

    .line 78
    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, "OF"

    .line 79
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->properties:[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    check-cast v2, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendArray([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_0
    const-string v1, "ON"

    .line 82
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->onTable:Ljava/lang/Class;

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->forEachRow:Z

    if-eqz v1, :cond_1

    const-string v1, "FOR EACH ROW"

    .line 85
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->whenCondition:Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    if-eqz v1, :cond_2

    const-string v1, " WHEN "

    .line 89
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->whenCondition:Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 90
    invoke-interface {v1, v0}, Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V

    .line 91
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 94
    :cond_2
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 96
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public when(Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->whenCondition:Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    return-object p0
.end method
