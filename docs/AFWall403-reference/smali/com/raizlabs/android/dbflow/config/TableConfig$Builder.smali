.class public final Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;
.super Ljava/lang/Object;
.source "TableConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/config/TableConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.field listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field modelAdapterModelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field final tableClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;->tableClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public build()Lcom/raizlabs/android/dbflow/config/TableConfig;
    .locals 1

    .line 100
    new-instance v0, Lcom/raizlabs/android/dbflow/config/TableConfig;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/TableConfig;-><init>(Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;)V

    return-object v0
.end method

.method public listModelLoader(Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;)Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/config/TableConfig$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;->listModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    return-object p0
.end method

.method public modelAdapterModelSaver(Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;)Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/config/TableConfig$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;->modelAdapterModelSaver:Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    return-object p0
.end method

.method public singleModelLoader(Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;)Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/config/TableConfig$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/TableConfig$Builder;->singleModelLoader:Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    return-object p0
.end method
