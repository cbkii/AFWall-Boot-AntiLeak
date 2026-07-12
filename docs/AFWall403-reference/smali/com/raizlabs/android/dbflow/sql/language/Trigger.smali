.class public Lcom/raizlabs/android/dbflow/sql/language/Trigger;
.super Ljava/lang/Object;
.source "Trigger.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# static fields
.field public static final AFTER:Ljava/lang/String; = "AFTER"

.field public static final BEFORE:Ljava/lang/String; = "BEFORE"

.field public static final INSTEAD_OF:Ljava/lang/String; = "INSTEAD OF"


# instance fields
.field beforeOrAfter:Ljava/lang/String;

.field temporary:Z

.field final triggerName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->triggerName:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Trigger;
    .locals 1

    .line 47
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Trigger;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/Trigger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public after()Lcom/raizlabs/android/dbflow/sql/language/Trigger;
    .locals 1

    const-string v0, "AFTER"

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->beforeOrAfter:Ljava/lang/String;

    return-object p0
.end method

.method public before()Lcom/raizlabs/android/dbflow/sql/language/Trigger;
    .locals 1

    const-string v0, "BEFORE"

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->beforeOrAfter:Ljava/lang/String;

    return-object p0
.end method

.method public deleteOn(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod<",
            "TTModel;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const-string v2, "DELETE"

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Trigger;Ljava/lang/String;Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->triggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    .line 138
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    const-string v1, "CREATE "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->temporary:Z

    if-eqz v1, :cond_0

    const-string v1, "TEMP "

    .line 140
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_0
    const-string v1, "TRIGGER IF NOT EXISTS "

    .line 142
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->triggerName:Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQuotedIfNeeded(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->beforeOrAfter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendOptional(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 146
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertOn(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod<",
            "TTModel;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const-string v2, "INSERT"

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Trigger;Ljava/lang/String;Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public insteadOf()Lcom/raizlabs/android/dbflow/sql/language/Trigger;
    .locals 1

    const-string v0, "INSTEAD OF"

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->beforeOrAfter:Ljava/lang/String;

    return-object p0
.end method

.method public temporary()Lcom/raizlabs/android/dbflow/sql/language/Trigger;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->temporary:Z

    return-object p0
.end method

.method public varargs updateOn(Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;[",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod<",
            "TTModel;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;

    const-string v1, "UPDATE"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Trigger;Ljava/lang/String;Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method
