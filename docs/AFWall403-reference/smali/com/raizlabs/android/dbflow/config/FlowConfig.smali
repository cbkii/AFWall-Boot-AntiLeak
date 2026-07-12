.class public final Lcom/raizlabs/android/dbflow/config/FlowConfig;
.super Ljava/lang/Object;
.source "FlowConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final databaseConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/DatabaseConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final databaseHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/DatabaseHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final openDatabasesOnInit:Z


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->databaseHolders:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig;->databaseHolders:Ljava/util/Set;

    .line 29
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->databaseConfigMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig;->databaseConfigMap:Ljava/util/Map;

    .line 30
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig;->context:Landroid/content/Context;

    .line 31
    iget-boolean p1, p1, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->openDatabasesOnInit:Z

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig;->openDatabasesOnInit:Z

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;
    .locals 1

    .line 19
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public databaseConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/DatabaseConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig;->databaseConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public databaseHolders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/DatabaseHolder;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig;->databaseHolders:Ljava/util/Set;

    return-object v0
.end method

.method public getConfigForDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/DatabaseConfig;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/FlowConfig;->databaseConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public openDatabasesOnInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig;->openDatabasesOnInit:Z

    return v0
.end method
