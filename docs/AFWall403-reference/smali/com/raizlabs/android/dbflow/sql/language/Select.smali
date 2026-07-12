.class public Lcom/raizlabs/android/dbflow/sql/language/Select;
.super Ljava/lang/Object;
.source "Select.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# static fields
.field public static final ALL:I = 0x1

.field public static final DISTINCT:I = 0x0

.field public static final NONE:I = -0x1


# instance fields
.field private mSelectQualifier:I

.field private final propertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Select;->mSelectQualifier:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Select;->propertyList:Ljava/util/List;

    .line 44
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    sget-object p1, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->ALL_PROPERTY:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private selectQualifier(I)Lcom/raizlabs/android/dbflow/sql/language/Select;
    .locals 0

    iput p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Select;->mSelectQualifier:I

    return-object p0
.end method


# virtual methods
.method public distinct()Lcom/raizlabs/android/dbflow/sql/language/Select;
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Select;->selectQualifier(I)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v0

    return-object v0
.end method

.method public from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/From<",
            "TTModel;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/From;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/From;-><init>(Lcom/raizlabs/android/dbflow/sql/Query;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    iget v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Select;->mSelectQualifier:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_0

    const-string v1, "DISTINCT"

    .line 84
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "ALL"

    .line 86
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_2
    const-string v1, ","

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Select;->propertyList:Ljava/util/List;

    .line 91
    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 92
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 93
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Select;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
