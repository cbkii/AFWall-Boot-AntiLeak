.class public Lcom/raizlabs/android/dbflow/sql/language/OrderBy;
.super Ljava/lang/Object;
.source "OrderBy.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# static fields
.field public static final ASCENDING:Ljava/lang/String; = "ASC"

.field public static final DESCENDING:Ljava/lang/String; = "DESC"


# instance fields
.field private collation:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field private column:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

.field private isAscending:Z

.field private orderByString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->column:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    return-void
.end method

.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    iput-boolean p2, p0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->isAscending:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->orderByString:Ljava/lang/String;

    return-void
.end method

.method public static fromNameAlias(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/OrderBy;
    .locals 1

    .line 32
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public static fromProperty(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/OrderBy;
    .locals 1

    .line 27
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;

    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/OrderBy;
    .locals 1

    .line 37
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public ascending()Lcom/raizlabs/android/dbflow/sql/language/OrderBy;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->isAscending:Z

    return-object p0
.end method

.method public collate(Lcom/raizlabs/android/dbflow/annotation/Collate;)Lcom/raizlabs/android/dbflow/sql/language/OrderBy;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->collation:Lcom/raizlabs/android/dbflow/annotation/Collate;

    return-object p0
.end method

.method public descending()Lcom/raizlabs/android/dbflow/sql/language/OrderBy;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->isAscending:Z

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->orderByString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->column:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->collation:Lcom/raizlabs/android/dbflow/annotation/Collate;

    if-eqz v2, :cond_0

    const-string v2, "COLLATE "

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->collation:Lcom/raizlabs/android/dbflow/annotation/Collate;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->isAscending:Z

    if-eqz v1, :cond_1

    const-string v1, "ASC"

    goto :goto_0

    :cond_1
    const-string v1, "DESC"

    .line 80
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
