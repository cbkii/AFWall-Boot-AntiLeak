.class public Lcom/raizlabs/android/dbflow/sql/language/property/Property;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
.implements Lcom/raizlabs/android/dbflow/sql/language/IConditional;
.implements Lcom/raizlabs/android/dbflow/sql/language/IOperator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty<",
        "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
        "TT;>;>;",
        "Lcom/raizlabs/android/dbflow/sql/language/IConditional;",
        "Lcom/raizlabs/android/dbflow/sql/language/IOperator<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final ALL_PROPERTY:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WILDCARD:Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

.field final table:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-string v1, "*"

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->ALL_PROPERTY:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-string v1, "?"

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->WILDCARD:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 51
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    invoke-direct {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->builder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-void
.end method

.method public static allProperty(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    const-string v1, "*"

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->withTable()Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 376
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v2

    .line 378
    invoke-virtual {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public asc()Lcom/raizlabs/android/dbflow/sql/language/OrderBy;
    .locals 1

    .line 516
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->fromProperty(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/OrderBy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->ascending()Lcom/raizlabs/android/dbflow/sql/language/OrderBy;

    move-result-object v0

    return-object v0
.end method

.method public between(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->between(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;

    move-result-object p1

    return-object p1
.end method

.method public between(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->between(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;

    move-result-object p1

    return-object p1
.end method

.method public between(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$Between<",
            "TT;>;"
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->between(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$Between;

    move-result-object p1

    return-object p1
.end method

.method public concatenate(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->concatenate(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public concatenate(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->concatenate(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic concatenate(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->concatenate(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public concatenate(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 369
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    .line 370
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->fullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "||"

    .line 369
    invoke-static {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public desc()Lcom/raizlabs/android/dbflow/sql/language/OrderBy;
    .locals 1

    .line 522
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->fromProperty(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/OrderBy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/OrderBy;->descending()Lcom/raizlabs/android/dbflow/sql/language/OrderBy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic distinct()Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->distinct()Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public distinct()Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 385
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getDistinctAliasName()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public div(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->div(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public div(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->div(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic div(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->div(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public div(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    .line 350
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->fullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "/"

    .line 349
    invoke-static {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public eq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->eq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->eq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method protected getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->op(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    return-object v0
.end method

.method public getCursorKey()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefinition()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->getFullQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDistinctAliasName()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->distinct()Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    return-object v0
.end method

.method public getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    return-object v0
.end method

.method public glob(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->glob(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public glob(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->glob(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public glob(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->glob(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThan(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->greaterThan(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThan(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->greaterThan(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->greaterThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public greaterThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->greaterThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public varargs in(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;[Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->in(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;[Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    move-result-object p1

    return-object p1
.end method

.method public varargs in(Lcom/raizlabs/android/dbflow/sql/language/IConditional;[Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->in(Lcom/raizlabs/android/dbflow/sql/language/IConditional;[Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    move-result-object p1

    return-object p1
.end method

.method public varargs in(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->in(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    move-result-object p1

    return-object p1
.end method

.method public in(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->in(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    move-result-object p1

    return-object p1
.end method

.method public is(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->is(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public is(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->is(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public isNot(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->isNot(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public isNot(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->isNot(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public isNot(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->isNot(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public isNotNull()Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->isNotNull()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->isNull()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    return-object v0
.end method

.method public lessThan(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->lessThan(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public lessThan(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->lessThan(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public lessThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->lessThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public lessThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->lessThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public like(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->like(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public like(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->like(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public like(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->like(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->minus(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public minus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->minus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->minus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 342
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    .line 343
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->fullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "-"

    .line 342
    invoke-static {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public notEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->notEq(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public notEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->notEq(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public notEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->notEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public varargs notIn(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;[Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->notIn(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;[Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    move-result-object p1

    return-object p1
.end method

.method public varargs notIn(Lcom/raizlabs/android/dbflow/sql/language/IConditional;[Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->notIn(Lcom/raizlabs/android/dbflow/sql/language/IConditional;[Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    move-result-object p1

    return-object p1
.end method

.method public varargs notIn(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->notIn(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    move-result-object p1

    return-object p1
.end method

.method public notIn(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator$In<",
            "TT;>;"
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->notIn(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/Operator$In;

    move-result-object p1

    return-object p1
.end method

.method public notLike(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->notLike(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public notLike(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->notLike(Lcom/raizlabs/android/dbflow/sql/language/IConditional;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public notLike(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->notLike(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->plus(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public plus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->plus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->plus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 335
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    .line 336
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->fullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "+"

    .line 335
    invoke-static {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public rem(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->rem(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public rem(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->rem(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rem(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->rem(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public rem(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 362
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    .line 363
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->fullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "%"

    .line 362
    invoke-static {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public times(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->times(Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public times(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Operator<",
            "TT;>;"
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getCondition()Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->times(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic times(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->times(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public times(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 355
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    .line 356
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->fullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "*"

    .line 355
    invoke-static {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withTable()Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->withTable()Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withTable(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->withTable(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public withTable()Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->withTable(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public withTable(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/NameAlias;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 391
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->table:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v2

    .line 392
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v2

    .line 393
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->withTable(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p1

    .line 394
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method
