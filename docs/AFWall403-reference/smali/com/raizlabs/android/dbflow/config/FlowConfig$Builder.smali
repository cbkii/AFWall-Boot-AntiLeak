.class public Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;
.super Ljava/lang/Object;
.source "FlowConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/config/FlowConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field final databaseConfigMap:Ljava/util/Map;
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

.field databaseHolders:Ljava/util/Set;
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

.field openDatabasesOnInit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->databaseHolders:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->databaseConfigMap:Ljava/util/Map;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addDatabaseConfig(Lcom/raizlabs/android/dbflow/config/DatabaseConfig;)Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->databaseConfigMap:Ljava/util/Map;

    .line 77
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->databaseClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addDatabaseHolder(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/DatabaseHolder;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->databaseHolders:Ljava/util/Set;

    .line 71
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/raizlabs/android/dbflow/config/FlowConfig;
    .locals 1

    .line 93
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowConfig;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowConfig;-><init>(Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;)V

    return-object v0
.end method

.method public openDatabasesOnInit(Z)Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->openDatabasesOnInit:Z

    return-object p0
.end method
