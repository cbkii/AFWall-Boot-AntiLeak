.class final Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ScatterMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;-><init>(Landroidx/collection/MutableScatterMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1850:1\n363#2,6:1851\n373#2,3:1858\n376#2,9:1862\n1826#3:1857\n1688#3:1861\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1\n*L\n1326#1:1851,6\n1326#1:1858,3\n1326#1:1862,9\n1326#1:1857\n1326#1:1861\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\'\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00030\u0002H\u008a@"
    }
    d2 = {
        "K",
        "V",
        "Lkotlin/sequences/SequenceScope;",
        "",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.collection.MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1"
    f = "ScatterMap.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x530
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "m$iv",
        "lastIndex$iv",
        "i$iv",
        "slot$iv",
        "bitCount$iv",
        "j$iv"
    }
    s = {
        "L$0",
        "L$3",
        "I$0",
        "I$1",
        "J$0",
        "I$2",
        "I$3"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/collection/MutableScatterMap;Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "TK;TV;>;",
            "Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->this$0:Landroidx/collection/MutableScatterMap;

    iput-object p2, p0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->this$1:Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;

    iget-object v1, p0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->this$0:Landroidx/collection/MutableScatterMap;

    iget-object v2, p0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->this$1:Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;

    invoke-direct {v0, v1, v2, p2}, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;-><init>(Landroidx/collection/MutableScatterMap;Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->label:I

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    iget v2, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->I$3:I

    iget v6, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->I$2:I

    iget-wide v7, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->J$0:J

    iget v9, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->I$1:I

    iget v10, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->I$0:I

    iget-object v11, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->L$3:Ljava/lang/Object;

    .line 1325
    check-cast v11, [J

    iget-object v12, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->L$2:Ljava/lang/Object;

    check-cast v12, Landroidx/collection/MutableScatterMap;

    iget-object v13, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->L$1:Ljava/lang/Object;

    check-cast v13, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;

    iget-object v14, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlin/sequences/SequenceScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v0

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceScope;

    iget-object v6, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 1326
    move-object v7, v6

    check-cast v7, Landroidx/collection/ScatterMap;

    iget-object v8, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->this$1:Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;

    .line 1851
    iget-object v7, v7, Landroidx/collection/ScatterMap;->metadata:[J

    .line 1852
    array-length v9, v7

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_6

    move-object v11, v0

    const/4 v10, 0x0

    .line 1855
    :goto_0
    aget-wide v12, v7, v10

    not-long v14, v12

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v16

    cmp-long v18, v14, v16

    if-eqz v18, :cond_5

    sub-int v14, v10, v9

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    rsub-int/lit8 v14, v14, 0x8

    move-object v15, v2

    const/4 v2, 0x0

    move-wide/from16 v21, v12

    move-object v13, v6

    move-object v12, v11

    move v6, v14

    move-object v11, v7

    move-object v14, v8

    move-wide/from16 v7, v21

    move/from16 v23, v10

    move v10, v9

    move/from16 v9, v23

    :goto_1
    if-ge v2, v6, :cond_4

    const-wide/16 v16, 0xff

    and-long v16, v7, v16

    const-wide/16 v18, 0x80

    cmp-long v20, v16, v18

    if-gez v20, :cond_3

    shl-int/lit8 v16, v9, 0x3

    add-int v3, v16, v2

    .line 1327
    invoke-virtual {v14, v3}, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;->setCurrent(I)V

    .line 1329
    new-instance v3, Landroidx/collection/MutableMapEntry;

    .line 1330
    iget-object v4, v13, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 1331
    iget-object v5, v13, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 1332
    invoke-virtual {v14}, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1;->getCurrent()I

    move-result v0

    .line 1329
    invoke-direct {v3, v4, v5, v0}, Landroidx/collection/MutableMapEntry;-><init>([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 1328
    iput-object v15, v12, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->L$0:Ljava/lang/Object;

    iput-object v14, v12, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->L$1:Ljava/lang/Object;

    iput-object v13, v12, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->L$2:Ljava/lang/Object;

    iput-object v11, v12, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->L$3:Ljava/lang/Object;

    iput v10, v12, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->I$0:I

    iput v9, v12, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->I$1:I

    iput-wide v7, v12, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->J$0:J

    iput v6, v12, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->I$2:I

    iput v2, v12, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->I$3:I

    const/4 v0, 0x1

    iput v0, v12, Landroidx/collection/MutableScatterMap$MutableMapWrapper$entries$1$iterator$1$1;->label:I

    invoke-virtual {v15, v3, v12}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_2

    return-object v1

    :cond_2
    move-object v3, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    :goto_2
    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v3

    :goto_3
    const/16 v3, 0x8

    goto :goto_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    :goto_4
    shr-long/2addr v7, v3

    add-int/2addr v2, v0

    move-object/from16 v0, p0

    const/16 v4, 0x8

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    const/16 v3, 0x8

    if-ne v6, v3, :cond_6

    move-object v7, v11

    move-object v11, v12

    move-object v6, v13

    move-object v8, v14

    move-object v2, v15

    move/from16 v21, v10

    move v10, v9

    move/from16 v9, v21

    goto :goto_5

    :cond_5
    const/4 v0, 0x1

    const/16 v3, 0x8

    :goto_5
    if-eq v10, v9, :cond_6

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    const/16 v4, 0x8

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1336
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
