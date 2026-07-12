.class public Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
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
    name = "In"
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
.field private inArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Z[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;TT;Z[TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 828
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->columnAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    .line 816
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;->inArguments:Ljava/util/List;

    .line 829
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;->inArguments:Ljava/util/List;

    .line 830
    invoke-static {p1, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p2, "IN"

    goto :goto_0

    :cond_0
    const-string p2, "NOT IN"

    :goto_0
    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, " %1s "

    .line 831
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;->operation:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Z[Ljava/lang/Object;Lcom/raizlabs/android/dbflow/sql/language/Operator$1;)V
    .locals 0

    .line 814
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 835
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->columnAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;-><init>(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    .line 816
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;->inArguments:Ljava/util/List;

    .line 836
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p2, "IN"

    goto :goto_0

    :cond_0
    const-string p2, "NOT IN"

    :goto_0
    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, " %1s "

    .line 837
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;->operation:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/util/Collection;ZLcom/raizlabs/android/dbflow/sql/language/Operator$1;)V
    .locals 0

    .line 814
    invoke-direct {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;-><init>(Lcom/raizlabs/android/dbflow/sql/language/Operator;Ljava/util/Collection;Z)V

    return-void
.end method


# virtual methods
.method public and(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;->inArguments:Ljava/util/List;

    .line 849
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V
    .locals 2

    .line 855
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;->columnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;->operation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    const-string v0, "("

    .line 856
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    const-string v0, ","

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;->inArguments:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->joinArguments(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/raizlabs/android/dbflow/sql/language/BaseOperator;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    return-void
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 861
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    .line 862
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator$In;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V

    .line 863
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
