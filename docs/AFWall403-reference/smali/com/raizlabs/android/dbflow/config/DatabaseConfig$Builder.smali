.class public final Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/config/DatabaseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final databaseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field databaseExtensionName:Ljava/lang/String;

.field databaseName:Ljava/lang/String;

.field helperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

.field inMemory:Z

.field modelNotifier:Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

.field openHelperCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;

.field final tableConfigMap:Ljava/util/Map;
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

.field transactionManagerCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->tableConfigMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->inMemory:Z

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->databaseClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public addTableConfig(Lcom/raizlabs/android/dbflow/config/TableConfig;)Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/config/TableConfig<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->tableConfigMap:Ljava/util/Map;

    .line 147
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/TableConfig;->tableClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/raizlabs/android/dbflow/config/DatabaseConfig;
    .locals 1

    .line 191
    new-instance v0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/DatabaseConfig;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;)V

    return-object v0
.end method

.method public databaseName(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->databaseName:Ljava/lang/String;

    return-object p0
.end method

.method public extensionName(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->databaseExtensionName:Ljava/lang/String;

    return-object p0
.end method

.method public helperListener(Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;)Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->helperListener:Lcom/raizlabs/android/dbflow/structure/database/DatabaseHelperListener;

    return-object p0
.end method

.method public inMemory()Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->inMemory:Z

    return-object p0
.end method

.method public modelNotifier(Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;)Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->modelNotifier:Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    return-object p0
.end method

.method public openHelper(Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;)Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->openHelperCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$OpenHelperCreator;

    return-object p0
.end method

.method public transactionManagerCreator(Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;)Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/DatabaseConfig$Builder;->transactionManagerCreator:Lcom/raizlabs/android/dbflow/config/DatabaseConfig$TransactionManagerCreator;

    return-object p0
.end method
