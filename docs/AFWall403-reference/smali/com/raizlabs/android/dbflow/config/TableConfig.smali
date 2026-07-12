.class public final Lcom/raizlabs/android/dbflow/config/TableConfig;
.super Ljava/lang/Object;
.source "TableConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final modelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final tableClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/config/TableConfig$Builder<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;->tableClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/TableConfig;->tableClass:Ljava/lang/Class;

    .line 30
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;->modelAdapterModelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/TableConfig;->modelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    .line 31
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/TableConfig;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    .line 32
    iget-object p1, p1, Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/TableConfig;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    return-void
.end method

.method public static builder(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/config/TableConfig$Builder<",
            "TTModel;>;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public listModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/TableConfig;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    return-object v0
.end method

.method public modelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/TableConfig;->modelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    return-object v0
.end method

.method public singleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/TableConfig;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    return-object v0
.end method

.method public tableClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/TableConfig;->tableClass:Ljava/lang/Class;

    return-object v0
.end method
