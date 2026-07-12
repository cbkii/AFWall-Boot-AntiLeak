.class public Ldev/ukanth/ufirewall/activity/LogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LogActivity.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;
    }
.end annotation


# static fields
.field protected static final MENU_CLEAR:I = 0x28

.field protected static final MENU_TOGGLE:I = -0x4


# instance fields
.field private emptyView:Landroid/widget/TextView;

.field private mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field protected mainMenu:Landroid/view/Menu;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private recyclerViewAdapter:Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;


# direct methods
.method public static synthetic $r8$lambda$RcmyXrMv2vno2ZlYmbMApz1v0Vk(Ldev/ukanth/ufirewall/activity/LogActivity;Landroid/content/Context;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/activity/LogActivity;->lambda$initializeRecyclerView$1(Landroid/content/Context;Ldev/ukanth/ufirewall/log/LogData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aBFB_2j5CiBGO46SOKHDzcKfVk0(Ldev/ukanth/ufirewall/activity/LogActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetemptyView(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->emptyView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwipeLayout(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerView(Ldev/ukanth/ufirewall/activity/LogActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerViewAdapter(Ldev/ukanth/ufirewall/activity/LogActivity;)Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->recyclerViewAdapter:Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLogData(Ldev/ukanth/ufirewall/activity/LogActivity;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->getLogData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateMap(Ldev/ukanth/ufirewall/activity/LogActivity;Ljava/util/List;Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/activity/LogActivity;->updateMap(Ljava/util/List;Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private clearDatabase(Landroid/content/Context;)V
    .locals 4

    .line 363
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->clear_log:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 365
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/LogActivity$2;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity$2;-><init>(Ldev/ukanth/ufirewall/activity/LogActivity;Landroid/content/Context;)V

    .line 366
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v0, Ldev/ukanth/ufirewall/activity/LogActivity$1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/activity/LogActivity$1;-><init>(Ldev/ukanth/ufirewall/activity/LogActivity;)V

    .line 376
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->Yes:I

    .line 382
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->No:I

    .line 383
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private getCount()I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 173
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v0

    const-class v1, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->count()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private getLogData()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 162
    invoke-static {v3}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v3

    const-class v4, Ldev/ukanth/ufirewall/log/LogData;

    .line 163
    invoke-virtual {v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v6, Ldev/ukanth/ufirewall/log/LogData_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 164
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->greaterThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3, v5}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    sget-object v1, Ldev/ukanth/ufirewall/log/LogData_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 165
    invoke-virtual {v0, v1, v4}, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderBy(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->queryList()Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->purgeOldLog()V

    return-object v0
.end method

.method private initTheme()V
    .locals 3

    .line 131
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 136
    :pswitch_0
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogActivity;->setTheme(I)V

    goto :goto_1

    .line 133
    :pswitch_1
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppDarkTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogActivity;->setTheme(I)V

    goto :goto_1

    .line 139
    :pswitch_2
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppBlackTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogActivity;->setTheme(I)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x44 -> :sswitch_1
        0x4c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeRecyclerView(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 145
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 146
    new-instance v0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ldev/ukanth/ufirewall/activity/LogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/activity/LogActivity;Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;-><init>(Landroid/content/Context;Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->recyclerViewAdapter:Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private synthetic lambda$initializeRecyclerView$1(Landroid/content/Context;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 2

    .line 147
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 152
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->donateDialog(Landroid/content/Context;Z)V

    goto :goto_1

    .line 148
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "DATA"

    .line 149
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->finish()V

    return-void
.end method

.method static split(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 289
    new-instance v3, Ljava/util/ArrayList;

    add-int v4, v2, p1

    .line 290
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {p0, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateMap(Ljava/util/List;Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;",
            "Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;",
            ")",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 312
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldev/ukanth/ufirewall/log/LogData;

    .line 313
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/log/LogData;

    .line 314
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 315
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_0

    .line 316
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ldev/ukanth/ufirewall/log/LogData;->setTimestamp(J)V

    goto :goto_1

    .line 319
    :cond_0
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ldev/ukanth/ufirewall/log/LogData;->setTimestamp(J)V

    .line 322
    :goto_1
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Ldev/ukanth/ufirewall/log/LogData;->setCount(J)V

    goto :goto_2

    .line 326
    :cond_1
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v7, 0x1

    .line 327
    invoke-virtual {v5, v7, v8}, Ldev/ukanth/ufirewall/log/LogData;->setCount(J)V

    .line 328
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :goto_2
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 337
    :cond_2
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 338
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldev/ukanth/ufirewall/log/LogData;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->initTheme()V

    .line 86
    sget p1, Ldev/ukanth/ufirewall/R$layout;->log_view:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->setContentView(I)V

    .line 88
    sget p1, Ldev/ukanth/ufirewall/R$id;->rule_toolbar:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 89
    sget v0, Ldev/ukanth/ufirewall/R$string;->showlog_title:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v0, Ldev/ukanth/ufirewall/activity/LogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/activity/LogActivity$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/activity/LogActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 95
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 97
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "validate"

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 104
    check-cast p1, Ljava/lang/String;

    const-string v0, "yes"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    new-instance p1, Ldev/ukanth/ufirewall/util/SecurityUtil;

    invoke-direct {p1, p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/SecurityUtil;->passCheck()Z

    .line 111
    :cond_1
    sget p1, Ldev/ukanth/ufirewall/R$id;->swipeContainer:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 112
    invoke-virtual {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 114
    sget p1, Ldev/ukanth/ufirewall/R$id;->recyclerview:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    sget p1, Ldev/ukanth/ufirewall/R$id;->empty_view:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->emptyView:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/LogActivity;->initializeRecyclerView(Landroid/content/Context;)V

    .line 119
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    new-instance p1, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;

    invoke-direct {p1, p0}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;-><init>(Ldev/ukanth/ufirewall/activity/LogActivity;)V

    invoke-virtual {p1, p0}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->setContext(Landroid/content/Context;)Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->execute()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    .line 124
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 125
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->emptyView:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, -0x4

    const-string v1, ""

    const/4 v2, 0x0

    .line 275
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$drawable;->ic_flow:I

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    const/16 v1, 0x28

    .line 276
    sget v3, Ldev/ukanth/ufirewall/R$string;->clear_log:I

    invoke-interface {v0, v2, v1, v2, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$drawable;->ic_clearlog:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 278
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 279
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->mainMenu:Landroid/view/Menu;

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 346
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 358
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 348
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->onBackPressed()V

    return v2

    .line 352
    :cond_1
    invoke-direct {p0, p0}, Ldev/ukanth/ufirewall/activity/LogActivity;->clearDatabase(Landroid/content/Context;)V

    return v2
.end method

.method public onRefresh()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    .line 390
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 391
    new-instance v0, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;-><init>(Ldev/ukanth/ufirewall/activity/LogActivity;)V

    invoke-virtual {v0, p0}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->setContext(Landroid/content/Context;)Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->setFromSwipeRefresh(Z)Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;

    move-result-object v0

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/activity/LogActivity$CollectLog;->execute()V

    return-void
.end method
