.class public Lcom/raizlabs/android/dbflow/sql/language/UnSafeStringOperator;
.super Ljava/lang/Object;
.source "UnSafeStringOperator.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# instance fields
.field private final conditionString:Ljava/lang/String;

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/UnSafeStringOperator;->separator:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 23
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    const-string v3, "\\?"

    .line 24
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/UnSafeStringOperator;->conditionString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/UnSafeStringOperator;->conditionString:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    return-void
.end method

.method public columnName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 72
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    .line 73
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/UnSafeStringOperator;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V

    .line 74
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSeparator()Z
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/UnSafeStringOperator;->separator:Ljava/lang/String;

    .line 56
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public operation()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/UnSafeStringOperator;->separator:Ljava/lang/String;

    return-object p0
.end method

.method public separator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/UnSafeStringOperator;->separator:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
