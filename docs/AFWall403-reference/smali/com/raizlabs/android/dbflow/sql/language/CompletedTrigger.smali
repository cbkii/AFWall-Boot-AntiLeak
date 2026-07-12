.class public Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;
.super Ljava/lang/Object;
.source "CompletedTrigger.java"

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
.field private final triggerLogicQuery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/Query;",
            ">;"
        }
    .end annotation
.end field

.field private triggerMethod:Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;Lcom/raizlabs/android/dbflow/sql/Query;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/sql/Query;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;->triggerLogicQuery:Ljava/util/List;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;->triggerMethod:Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;

    .line 31
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public and(Lcom/raizlabs/android/dbflow/sql/Query;)Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;
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

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;->triggerLogicQuery:Ljava/util/List;

    .line 39
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public disable()V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;->triggerMethod:Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;

    .line 65
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->onTable:Ljava/lang/Class;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;->triggerMethod:Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;

    iget-object v1, v1, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->trigger:Lcom/raizlabs/android/dbflow/sql/language/Trigger;

    iget-object v1, v1, Lcom/raizlabs/android/dbflow/sql/language/Trigger;->triggerName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/sql/SqlUtils;->dropTrigger(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public enable()V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;->triggerMethod:Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;

    .line 57
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->onTable:Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    .line 45
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;->triggerMethod:Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/TriggerMethod;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    const-string v1, "\nBEGIN"

    .line 46
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    const-string v2, "\n"

    .line 47
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    const-string v2, ";\n"

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/CompletedTrigger;->triggerLogicQuery:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    const-string v2, "\nEND"

    .line 48
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 49
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
