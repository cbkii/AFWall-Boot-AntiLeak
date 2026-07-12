.class public Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;
.super Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;
.source "Operator.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/language/Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Between"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;",
        "Lcom/raizlabs/android/dbflow/sql/Query;"
    }
.end annotation


# instance fields
.field private secondValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 775
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/sql/language/Operator;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "BETWEEN"

    aput-object v3, v1, v2

    const-string v2, " %1s "

    .line 776
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->operation:Ljava/lang/String;

    .line 777
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->value:Ljava/lang/Object;

    .line 778
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->isValueSet:Z

    .line 779
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->postArgument()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->postArg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Lcom/raizlabs/android/dbflow/sql/language/Operator$1;)V
    .locals 0

    .line 763
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public and(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$Between<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->secondValue:Ljava/lang/Object;

    return-object p0
.end method

.method public appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V
    .locals 2

    .line 795
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->columnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->operation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    .line 796
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->value()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    const-string v0, "AND"

    .line 797
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    .line 798
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->secondValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    .line 799
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->postArgument()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendOptional(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    return-void
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 804
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    .line 805
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V

    .line 806
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public secondValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;->secondValue:Ljava/lang/Object;

    return-object v0
.end method
