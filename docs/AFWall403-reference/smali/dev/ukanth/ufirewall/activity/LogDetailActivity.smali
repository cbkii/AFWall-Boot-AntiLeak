.class public Ldev/ukanth/ufirewall/activity/LogDetailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LogDetailActivity.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;,
        Ldev/ukanth/ufirewall/activity/LogDetailActivity$Task;
    }
.end annotation


# static fields
.field protected static final MENU_EXPORT_LOG:I = 0x64

.field private static final MY_PERMISSIONS_REQUEST_WRITE_STORAGE:I = 0x1

.field private static final PAGE_SIZE:I = 0x64

.field private static fullLogDataList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation
.end field

.field private static logDataList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation
.end field

.field protected static logDumpFile:Ljava/lang/String; = "log_dump.log"

.field private static uid:I


# instance fields
.field protected final MENU_CLEAR:I

.field protected final MENU_TOGGLE:I

.field final TAG:Ljava/lang/String;

.field private currentPage:I

.field private current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

.field private emptyView:Landroid/widget/TextView;

.field private isLoading:Z

.field private loadingMoreIndicator:Landroid/widget/TextView;

.field private mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field protected mainMenu:Landroid/view/Menu;

.field private mostBlockedDestination:Landroid/widget/TextView;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private recyclerViewAdapter:Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;

.field private timePeriod:Landroid/widget/TextView;

.field private totalBlocks:Landroid/widget/TextView;

.field private uniqueDestinations:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$AcNgjeMDm2HSQZU17n39O1398i8(Ldev/ukanth/ufirewall/activity/LogDetailActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$showBlockDestinationDialog$8(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BFMBh3e5S4-iIFB3yHvaa_UIVfo(Ldev/ukanth/ufirewall/activity/LogDetailActivity;Landroid/content/Context;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$clearDatabase$6(Landroid/content/Context;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MSuN14egtXIzg3LC6GUwvsbnjz8(Ldev/ukanth/ufirewall/activity/LogDetailActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$loadMoreData$12(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N_07pz4qSN_CdXOuTAwAS1bG6Qw(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$updateSummaryStatistics$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$R5AsA7_zWoBYgNSDYRI_htiREug(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$loadMoreData$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$TVYCMhOMVZiEweSBAdjcldlV0eY(Ldev/ukanth/ufirewall/activity/LogDetailActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$updateSummaryStatistics$10(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UL3l-zWBP2ZkLiGftKfWs2rtcCc(Ldev/ukanth/ufirewall/activity/LogDetailActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$initializeRecyclerView$2(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VHkxjTnxKmgGwv1ZOgylhdOD4t8(Ldev/ukanth/ufirewall/activity/LogDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aO6QcBs2hhNBknGPcvGCmM_pinY(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$loadMoreData$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$kcUqdWx2IIOGqZU4KHqmGrif3AI(Ldev/ukanth/ufirewall/activity/LogDetailActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$showWhitelistDestinationDialog$9(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nOU7SLCTUBFKVguVuTPgTYm-puE(Ldev/ukanth/ufirewall/activity/LogDetailActivity;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$initializeRecyclerView$1(Ldev/ukanth/ufirewall/log/LogData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tjxqCGw1qHlnuM7Cuu5CMDyPjd4(Ldev/ukanth/ufirewall/activity/LogDetailActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$onContextItemSelected$4(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vYxfduG7oX2DhKQ5BedJSG37sR0(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$loadMoreData$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$w-a47y72e5meIM87IazbUEZ4u0E(Ldev/ukanth/ufirewall/activity/LogDetailActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->lambda$onContextItemSelected$5(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetemptyView(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->emptyView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisLoading(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Z
    .locals 0

    iget-boolean p0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->isLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwipeLayout(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerView(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerViewAdapter(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerViewAdapter:Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentPage(Ldev/ukanth/ufirewall/activity/LogDetailActivity;I)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->currentPage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCount(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)I
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetLogData(Ldev/ukanth/ufirewall/activity/LogDetailActivity;I)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getLogData(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPagedLogData(Ldev/ukanth/ufirewall/activity/LogDetailActivity;III)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getPagedLogData(III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadMoreData(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->loadMoreData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupLoadMoreFunctionality(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->setupLoadMoreFunctionality()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSummaryStatistics(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->updateSummaryStatistics()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTitleWithLogCount(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->updateTitleWithLogCount()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetfullLogDataList()Ljava/util/List;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->fullLogDataList:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetlogDataList()Ljava/util/List;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->logDataList:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetuid()I
    .locals 1

    sget v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->uid:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputfullLogDataList(Ljava/util/List;)V
    .locals 0

    sput-object p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->fullLogDataList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlogDataList(Ljava/util/List;)V
    .locals 0

    sput-object p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->logDataList:Ljava/util/List;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->currentPage:I

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->isLoading:Z

    const/4 v0, -0x4

    iput v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->MENU_TOGGLE:I

    const/16 v0, 0x28

    iput v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->MENU_CLEAR:I

    const-string v0, "AFWall"

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private clearDatabase(Landroid/content/Context;)V
    .locals 4

    .line 463
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 465
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;Landroid/content/Context;)V

    .line 466
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda7;-><init>()V

    .line 476
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->Yes:I

    .line 477
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->No:I

    .line 478
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private exportToSD()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 748
    new-instance v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$Task;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$Task;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 750
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 757
    :cond_1
    new-instance v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$Task;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$Task;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private formatTimePeriod(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x3e8

    .line 656
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 657
    div-long v2, p1, v0

    .line 658
    div-long v0, v2, v0

    const-wide/16 v4, 0x18

    .line 659
    div-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "d"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    cmp-long v4, v0, v6

    if-lez v4, :cond_1

    .line 664
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "h"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    .line 666
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "m"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 668
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCount()I
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 315
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v3, Ldev/ukanth/ufirewall/log/LogData_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    sget v4, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->count()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private getLogData(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 296
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/log/LogData;

    .line 297
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v3, Ldev/ukanth/ufirewall/log/LogData_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 298
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    sget-object v1, Ldev/ukanth/ufirewall/log/LogData_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 299
    invoke-virtual {p1, v1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderBy(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->queryList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getPagedLogData(III)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation

    mul-int p2, p2, p3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 305
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/log/LogData;

    .line 306
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v3, Ldev/ukanth/ufirewall/log/LogData_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    sget-object v1, Ldev/ukanth/ufirewall/log/LogData_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 308
    invoke-virtual {p1, v1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderBy(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    .line 309
    invoke-virtual {p1, p3}, Lcom/raizlabs/android/dbflow/sql/language/Where;->limit(I)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    .line 310
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Where;->offset(I)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->queryList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private initTheme()V
    .locals 3

    .line 108
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 116
    :pswitch_0
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightHighContrastTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->setTheme(I)V

    goto :goto_1

    .line 113
    :pswitch_1
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->setTheme(I)V

    goto :goto_1

    .line 110
    :pswitch_2
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppDarkTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->setTheme(I)V

    goto :goto_1

    .line 119
    :pswitch_3
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppBlackTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->setTheme(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x44 -> :sswitch_2
        0x4c -> :sswitch_1
        0x12647 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeRecyclerView(Landroid/content/Context;)V
    .locals 2

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasFixedSize()Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 163
    new-instance p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda8;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    invoke-direct {p1, v0, v1}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;-><init>(Landroid/content/Context;Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerViewAdapter:Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    new-instance v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda9;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerViewAdapter:Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;

    .line 200
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private synthetic lambda$clearDatabase$6(Landroid/content/Context;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 3

    .line 469
    const-class p3, Ldev/ukanth/ufirewall/log/LogData;

    invoke-static {p3}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->delete(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v1, Ldev/ukanth/ufirewall/log/LogData_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    sget v2, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->uid:I

    .line 470
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p3, v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p3

    .line 471
    invoke-virtual {p3}, Lcom/raizlabs/android/dbflow/sql/language/Where;->async()Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;

    move-result-object p3

    .line 472
    invoke-virtual {p3}, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;->execute()V

    .line 473
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Ldev/ukanth/ufirewall/R$string;->log_cleared:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 474
    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$clearDatabase$7(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 476
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$initializeRecyclerView$1(Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->showContextMenu()Z

    return-void
.end method

.method private synthetic lambda$initializeRecyclerView$2(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .line 168
    sget p3, Ldev/ukanth/ufirewall/R$string;->select_the_action:I

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 171
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    sget v0, Ldev/ukanth/ufirewall/R$string;->show_destination_address:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, p3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 172
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v0, 0x2

    sget v3, Ldev/ukanth/ufirewall/R$string;->show_source_address:I

    invoke-interface {p1, v1, p3, v0, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 173
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v0, 0x3

    sget v3, Ldev/ukanth/ufirewall/R$string;->ping_destination:I

    invoke-interface {p1, v1, p3, v0, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v0, 0x4

    sget v3, Ldev/ukanth/ufirewall/R$string;->ping_source:I

    invoke-interface {p1, v1, p3, v0, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 175
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v0, 0x5

    sget v3, Ldev/ukanth/ufirewall/R$string;->resolve_destination:I

    invoke-interface {p1, v1, p3, v0, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 176
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v0, 0x6

    sget v3, Ldev/ukanth/ufirewall/R$string;->resolve_source:I

    invoke-interface {p1, v1, p3, v0, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    iget-object p3, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    .line 178
    invoke-virtual {p3}, Ldev/ukanth/ufirewall/log/LogData;->getHostname()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 179
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const/16 v0, 0x9

    sget v3, Ldev/ukanth/ufirewall/R$string;->copy_domain:I

    invoke-interface {p1, v1, p3, v0, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 182
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const/16 v0, 0xa

    const-string v3, "Block this destination permanently"

    invoke-interface {p1, v1, p3, v0, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 183
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const/16 v0, 0xb

    const-string v3, "Whitelist this destination"

    invoke-interface {p1, v1, p3, v0, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    new-array p3, v1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 184
    invoke-static {p3}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object p3

    const-class v0, Ldev/ukanth/ufirewall/log/LogPreference;

    .line 185
    invoke-virtual {p3, v0}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object p3

    new-array v0, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v2, Ldev/ukanth/ufirewall/log/LogPreference_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    sget v3, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->uid:I

    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p3

    invoke-virtual {p3}, Lcom/raizlabs/android/dbflow/sql/language/Where;->querySingle()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ldev/ukanth/ufirewall/log/LogPreference;

    const/16 v0, 0x8

    if-eqz p3, :cond_2

    .line 189
    invoke-virtual {p3}, Ldev/ukanth/ufirewall/log/LogPreference;->isDisable()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 190
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, 0x7

    sget v0, Ldev/ukanth/ufirewall/R$string;->displayBlockNotification_enable:I

    invoke-interface {p1, v1, p2, p3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget p3, Ldev/ukanth/ufirewall/R$string;->displayBlockNotification:I

    invoke-interface {p1, v1, p2, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget p3, Ldev/ukanth/ufirewall/R$string;->displayBlockNotification:I

    invoke-interface {p1, v1, p2, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method private synthetic lambda$loadMoreData$12(Ljava/util/List;)V
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->logDataList:Ljava/util/List;

    .line 631
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerViewAdapter:Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;

    sget-object v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->logDataList:Ljava/util/List;

    .line 633
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 634
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 632
    invoke-virtual {v0, v1, p1}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->loadingMoreIndicator:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 636
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->isLoading:Z

    return-void
.end method

.method private synthetic lambda$loadMoreData$13()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->loadingMoreIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 641
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->isLoading:Z

    return-void
.end method

.method private synthetic lambda$loadMoreData$14()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->loadingMoreIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 648
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->isLoading:Z

    return-void
.end method

.method private synthetic lambda$loadMoreData$15()V
    .locals 3

    :try_start_0
    sget v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->uid:I

    iget v1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->currentPage:I

    const/16 v2, 0x64

    .line 625
    invoke-direct {p0, v0, v1, v2}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getPagedLogData(III)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 627
    new-instance v1, Ldev/ukanth/ufirewall/util/DateComparator;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/util/DateComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 629
    new-instance v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda15;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 640
    :cond_0
    new-instance v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AFWall"

    const-string v2, "Error loading more data"

    .line 646
    invoke-static {v1, v2, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 647
    new-instance v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda2;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onContextItemSelected$3(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onContextItemSelected$4(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getDpt()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    sget p1, Ldev/ukanth/ufirewall/R$string;->destination_copied:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onContextItemSelected$5(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getSrc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getSpt()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    sget p1, Ldev/ukanth/ufirewall/R$string;->source_copied:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$showBlockDestinationDialog$8(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    const-string p1, "Feature requires integration with custom rules system"

    .line 511
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$showWhitelistDestinationDialog$9(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    const-string p1, "Feature requires integration with custom rules system"

    .line 528
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$updateSummaryStatistics$10(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->uniqueDestinations:Landroid/widget/TextView;

    .line 578
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->timePeriod:Landroid/widget/TextView;

    .line 579
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->mostBlockedDestination:Landroid/widget/TextView;

    .line 580
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$updateSummaryStatistics$11()V
    .locals 15

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 545
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->fullLogDataList:Ljava/util/List;

    .line 550
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    const-wide/high16 v5, -0x8000000000000000L

    move-wide v7, v3

    move-wide v9, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldev/ukanth/ufirewall/log/LogData;

    .line 551
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ldev/ukanth/ufirewall/log/LogData;->getDpt()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 552
    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-nez v14, :cond_0

    goto :goto_1

    .line 554
    :cond_0
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_1
    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-virtual {v11}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v12

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 558
    invoke-virtual {v11}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_0

    .line 561
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    cmp-long v2, v7, v3

    if-eqz v2, :cond_2

    cmp-long v2, v9, v5

    if-eqz v2, :cond_2

    sub-long/2addr v9, v7

    .line 563
    invoke-direct {p0, v9, v10}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->formatTimePeriod(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, "0s"

    .line 568
    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, "No data"

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 569
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v12, :cond_3

    .line 570
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x)"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v12, v3

    move-object v3, v4

    goto :goto_3

    .line 577
    :cond_4
    new-instance v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, v1, v2, v3}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda11;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadMoreData()V
    .locals 3

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->isLoading:Z

    if-nez v0, :cond_2

    sget-object v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->fullLogDataList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 610
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->currentPage:I

    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v2, v2, 0x64

    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->isLoading:Z

    add-int/2addr v1, v0

    iput v1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->currentPage:I

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->loadingMoreIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 621
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda3;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 652
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupLoadMoreFunctionality()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 587
    new-instance v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$1;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$1;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private showBlockDestinationDialog()V
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    if-nez v0, :cond_0

    return-void

    .line 502
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Block Destination"

    .line 503
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add a permanent rule to block all connections to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    .line 505
    invoke-virtual {v2}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v2}, Ldev/ukanth/ufirewall/log/LogData;->getDpt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const-string v1, "Block"

    .line 506
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 507
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda4;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    .line 508
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private showWhitelistDestinationDialog()V
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    if-nez v0, :cond_0

    return-void

    .line 519
    :cond_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Whitelist Destination"

    .line 520
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add a permanent rule to allow all connections to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    .line 522
    invoke-virtual {v2}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v2}, Ldev/ukanth/ufirewall/log/LogData;->getDpt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const-string v1, "Allow"

    .line 523
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    .line 524
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda6;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    .line 525
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private updateSummaryStatistics()V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->fullLogDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 534
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->totalBlocks:Landroid/widget/TextView;

    sget-object v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->fullLogDataList:Ljava/util/List;

    .line 539
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda5;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 582
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTitleWithLogCount()V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->logDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 489
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->logDataList:Ljava/util/List;

    const/4 v1, 0x0

    .line 491
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->logDataList:Ljava/util/List;

    .line 492
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 494
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->logDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blocked)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    const-string v1, ":"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 287
    :pswitch_0
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->showWhitelistDestinationDialog()V

    goto/16 :goto_0

    .line 284
    :pswitch_1
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->showBlockDestinationDialog()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    .line 275
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getHostname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    sget v0, Ldev/ukanth/ufirewall/R$string;->domain_copied:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 280
    :cond_0
    sget v0, Ldev/ukanth/ufirewall/R$string;->no_domain_resolved:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    sget v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->uid:I

    .line 272
    invoke-static {v0, v3}, Ldev/ukanth/ufirewall/util/G;->updateLogNotification(IZ)V

    goto/16 :goto_0

    :pswitch_4
    sget v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->uid:I

    .line 269
    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/util/G;->updateLogNotification(IZ)V

    goto/16 :goto_0

    .line 264
    :pswitch_5
    new-instance v0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;-><init>(Landroid/content/Context;)V

    new-array v1, v3, [Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;

    new-instance v3, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;

    sget-object v4, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->RESOLVE:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    iget-object v5, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    .line 265
    invoke-virtual {v5}, Ldev/ukanth/ufirewall/log/LogData;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;-><init>(Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 264
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 258
    :pswitch_6
    new-instance v0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;-><init>(Landroid/content/Context;)V

    new-array v1, v3, [Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;

    new-instance v3, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;

    sget-object v4, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->RESOLVE:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    iget-object v5, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    .line 259
    invoke-virtual {v5}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;-><init>(Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 258
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 252
    :pswitch_7
    new-instance v0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;-><init>(Landroid/content/Context;)V

    new-array v1, v3, [Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;

    new-instance v3, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;

    sget-object v4, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->PING:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    iget-object v5, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    .line 253
    invoke-virtual {v5}, Ldev/ukanth/ufirewall/log/LogData;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;-><init>(Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 252
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 245
    :pswitch_8
    new-instance v0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;-><init>(Landroid/content/Context;)V

    new-array v1, v3, [Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;

    new-instance v3, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;

    sget-object v4, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->PING:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    iget-object v5, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    .line 246
    invoke-virtual {v5}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;-><init>(Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 245
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 232
    :pswitch_9
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    .line 233
    invoke-virtual {v3}, Ldev/ukanth/ufirewall/log/LogData;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/log/LogData;->getSpt()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->source_address:I

    .line 234
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->OK:I

    .line 235
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->copy_text:I

    .line 236
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda14;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    .line 237
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto :goto_0

    .line 218
    :pswitch_a
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    .line 219
    invoke-virtual {v3}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/log/LogData;->getDpt()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->destination_address:I

    .line 220
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->OK:I

    .line 221
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->copy_text:I

    .line 222
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda13;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    .line 223
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    .line 209
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->current_selected_logData:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/log/LogData;->getSrc()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda12;-><init>()V

    const/4 v2, -0x1

    .line 212
    invoke-virtual {v0, v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->choose:I

    .line 213
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 291
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 126
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->initTheme()V

    .line 128
    sget p1, Ldev/ukanth/ufirewall/R$layout;->logdetail_view:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->setContentView(I)V

    .line 129
    sget p1, Ldev/ukanth/ufirewall/R$id;->rule_toolbar:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 130
    sget v0, Ldev/ukanth/ufirewall/R$string;->showlogdetail_title:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$$ExternalSyntheticLambda10;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 135
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "DATA"

    const/4 v1, -0x1

    .line 136
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->uid:I

    .line 139
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 140
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 142
    sget p1, Ldev/ukanth/ufirewall/R$id;->swipedetailContainer:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 143
    invoke-virtual {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 145
    sget p1, Ldev/ukanth/ufirewall/R$id;->detailrecyclerview:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    sget p1, Ldev/ukanth/ufirewall/R$id;->emptydetail_view:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->emptyView:Landroid/widget/TextView;

    .line 149
    sget p1, Ldev/ukanth/ufirewall/R$id;->total_blocks:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->totalBlocks:Landroid/widget/TextView;

    .line 150
    sget p1, Ldev/ukanth/ufirewall/R$id;->unique_destinations:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->uniqueDestinations:Landroid/widget/TextView;

    .line 151
    sget p1, Ldev/ukanth/ufirewall/R$id;->time_period:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->timePeriod:Landroid/widget/TextView;

    .line 152
    sget p1, Ldev/ukanth/ufirewall/R$id;->most_blocked_destination:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->mostBlockedDestination:Landroid/widget/TextView;

    .line 153
    sget p1, Ldev/ukanth/ufirewall/R$id;->loading_more_indicator:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->loadingMoreIndicator:Landroid/widget/TextView;

    .line 155
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->initializeRecyclerView(Landroid/content/Context;)V

    .line 157
    new-instance p1, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;

    invoke-direct {p1, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    invoke-virtual {p1, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->setContext(Landroid/content/Context;)Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v0, -0x4

    const-string v1, ""

    const/4 v2, 0x0

    .line 431
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$drawable;->ic_flow:I

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    const/16 v1, 0x28

    .line 432
    sget v3, Ldev/ukanth/ufirewall/R$string;->clear_log:I

    invoke-interface {v0, v2, v1, v2, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v3, Ldev/ukanth/ufirewall/R$drawable;->ic_clearlog:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x64

    .line 436
    sget v3, Ldev/ukanth/ufirewall/R$string;->export_to_sd:I

    const/4 v4, 0x1

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$drawable;->ic_export:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 437
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 438
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->mainMenu:Landroid/view/Menu;

    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 446
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 458
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 448
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->onBackPressed()V

    return v2

    .line 455
    :cond_1
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->exportToSD()V

    return v2

    .line 452
    :cond_2
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->clearDatabase(Landroid/content/Context;)V

    return v2
.end method

.method public onRefresh()V
    .locals 2

    .line 485
    new-instance v0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;-><init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    invoke-virtual {v0, p0}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->setContext(Landroid/content/Context;)Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity$CollectDetailLog;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
