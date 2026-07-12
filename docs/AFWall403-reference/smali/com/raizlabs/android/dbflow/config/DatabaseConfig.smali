.class public final Lcom/raizlabs/android/dbflow/config/DatabaseConfig;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;,
        Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;,
        Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;
    }
.end annotation


# instance fields
.field private final databaseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final databaseExtensionName:Ljava/lang/String;

.field private final databaseName:Ljava/lang/String;

.field private final helperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

.field private final inMemory:Z

.field private final modelNotifier:Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

.field private final openHelperCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;

.field private final tableConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/TableConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionManagerCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->openHelperCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->openHelperCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;

    .line 50
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->databaseClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->databaseClass:Ljava/lang/Class;

    .line 51
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->transactionManagerCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->transactionManagerCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;

    .line 52
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->helperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->helperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    .line 53
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->tableConfigMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->tableConfigMap:Ljava/util/Map;

    .line 54
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->modelNotifier:Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->modelNotifier:Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    .line 55
    iget-boolean v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->inMemory:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->inMemory:Z

    .line 56
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->databaseName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->databaseClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->databaseName:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->databaseName:Ljava/lang/String;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->databaseName:Ljava/lang/String;

    .line 62
    :goto_0
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->databaseExtensionName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p1, ".db"

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->databaseExtensionName:Ljava/lang/String;

    goto :goto_2

    .line 65
    :cond_1
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->databaseExtensionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->databaseExtensionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->databaseExtensionName:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public static builder(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static inMemoryBuilder(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->inMemory()Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public databaseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->databaseClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDatabaseExtensionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->databaseExtensionName:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableConfigForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/TableConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/config/TableConfig<",
            "TTModel;>;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->tableConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/config/TableConfig;

    return-object p1
.end method

.method public helperCreator()Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->openHelperCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;

    return-object v0
.end method

.method public helperListener()Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->helperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    return-object v0
.end method

.method public isInMemory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->inMemory:Z

    return v0
.end method

.method public modelNotifier()Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->modelNotifier:Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    return-object v0
.end method

.method public tableConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/TableConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->tableConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public transactionManagerCreator()Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;->transactionManagerCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;

    return-object v0
.end method
