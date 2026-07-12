.class public Ldev/ukanth/ufirewall/util/AppListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;,
        Ldev/ukanth/ufirewall/util/AppListArrayAdapter$LoadIconTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ldev/ukanth/ufirewall/Api$PackageInfoData;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AFWall"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;

.field private expandedPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final listApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/Api$PackageInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private useOld:Z


# direct methods
.method public static synthetic $r8$lambda$D2UJyMHV88V9WcmOpl191Vcq0Ag(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->lambda$setupExpandableView$3(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vcxceb9ugd9CcDpIaQ9kP4yQCRI(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->lambda$setupExpandableView$2(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WMZ1gSJ_-l26TSTr2Ju0i9awR0s(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->lambda$setupExpandableView$4(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dKYhcnqsNGCwpYV4n_EtqGn3sAI(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->lambda$getView$1(Landroid/view/View;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nnf-nvMhrP45pbQE0o5n_H2ADG4(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->lambda$getView$0(Landroid/view/View;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-YcL3U6wfFEtWytOQaHdgZMvxI(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->lambda$updateDataUsageStats$7(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    return-void
.end method

.method public constructor <init>(Ldev/ukanth/ufirewall/MainActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/ukanth/ufirewall/MainActivity;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/Api$PackageInfoData;",
            ">;)V"
        }
    .end annotation

    .line 72
    sget v0, Ldev/ukanth/ufirewall/R$layout;->main_list:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->useOld:Z

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->expandedPositions:Ljava/util/Set;

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->activity:Landroid/app/Activity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->listApps:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ldev/ukanth/ufirewall/MainActivity;Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/ukanth/ufirewall/MainActivity;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/Api$PackageInfoData;",
            ">;Z)V"
        }
    .end annotation

    .line 65
    sget p4, Ldev/ukanth/ufirewall/R$layout;->main_list_old:I

    invoke-direct {p0, p2, p4, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p4, 0x0

    iput-boolean p4, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->useOld:Z

    .line 59
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->expandedPositions:Ljava/util/Set;

    const/4 p4, 0x1

    iput-boolean p4, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->useOld:Z

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->activity:Landroid/app/Activity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->listApps:Ljava/util/List;

    return-void
.end method

.method private StartAppDetailActivityIntent(Landroid/view/View;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Ljava/lang/Integer;)V
    .locals 2

    .line 459
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    const-class v1, Ldev/ukanth/ufirewall/activity/AppDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 460
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 461
    invoke-static {p2}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object p2

    iget-object p2, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    const-string v0, "package"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "appid"

    .line 462
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    .line 463
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private addEventListenter(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 2

    .line 467
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_lan(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_lan(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$1;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$1;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 485
    :cond_0
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_wifi(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 486
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_wifi(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$2;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$2;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 502
    :cond_1
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_3g(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 503
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_3g(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$3;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$3;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 519
    :cond_2
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_roam(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 520
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_roam(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$4;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$4;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 536
    :cond_3
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_vpn(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 537
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_vpn(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$5;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$5;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 553
    :cond_4
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_tether(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 554
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_tether(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$6;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$6;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 570
    :cond_5
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_tor(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 571
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_tor(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$7;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$7;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_6
    return-void
.end method

.method private addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;
    .locals 0

    .line 613
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const/4 p2, 0x0

    .line 614
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-object p1
.end method

.method private addSupport(Landroid/widget/CheckBox;Ldev/ukanth/ufirewall/Api$PackageInfoData;I)Landroid/widget/CheckBox;
    .locals 1

    if-eqz p1, :cond_5

    .line 590
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    iget-boolean p2, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 605
    :cond_1
    iget-boolean p2, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 602
    :cond_2
    iget-boolean p2, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 596
    :cond_3
    iget-boolean p2, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 593
    :cond_4
    iget-boolean p2, p2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    :goto_0
    return-object p1
.end method

.method private applyHighContrastCheckboxTint(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 2

    const-string v0, "LHC"

    .line 631
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x1000000

    .line 636
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 638
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_wifi(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 639
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_wifi(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 641
    :cond_1
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_3g(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 642
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_3g(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 644
    :cond_2
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_roam(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 645
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_roam(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 647
    :cond_3
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_vpn(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 648
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_vpn(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 650
    :cond_4
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_tether(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 651
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_tether(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 653
    :cond_5
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_lan(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 654
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_lan(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 656
    :cond_6
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_tor(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 657
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_tor(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method private applyThemeColors(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 4

    .line 303
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->userColor()I

    move-result v0

    .line 304
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->userColor()I

    move-result v1

    .line 308
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetactionToggleLog(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 309
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetactionOpenApp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 310
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetactionViewLogs(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 313
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetblockedCount(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetblockedCount(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    :cond_0
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetlastActivity(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetlastActivity(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    :cond_1
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetlastBlockedDestination(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 320
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetlastBlockedDestination(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    :cond_2
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetdataUsage(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 323
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetdataUsage(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$getView$0(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->toggleExpansion(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$getView$1(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->toggleExpansion(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$setupExpandableView$2(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/view/View;)V
    .locals 1

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Notification toggle clicked for UID: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v0

    iget v0, v0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AFWall"

    invoke-static {v0, p2}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->toggleLogNotification(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    return-void
.end method

.method private synthetic lambda$setupExpandableView$3(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/view/View;)V
    .locals 1

    .line 275
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Open app settings clicked for: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v0

    iget-object v0, v0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AFWall"

    invoke-static {v0, p2}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->openAppSettings(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    return-void
.end method

.method private synthetic lambda$setupExpandableView$4(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/view/View;)V
    .locals 1

    .line 279
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "View logs clicked for UID: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v0

    iget v0, v0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AFWall"

    invoke-static {v0, p2}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->openFirewallLogs(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    return-void
.end method

.method static synthetic lambda$updateDataUsageStats$5(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Ljava/lang/String;)V
    .locals 2

    .line 440
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetdataUsage(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetdataUsage(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateDataUsageStats$6(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 1

    .line 449
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetdataUsage(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetdataUsage(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object p0

    const-string v0, "Data: Not available"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateDataUsageStats$7(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 3

    .line 434
    :try_start_0
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v0

    iget v0, v0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v0}, Ldev/ukanth/ufirewall/util/DataUsageParser;->getDataUsageForUID(I)Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;

    move-result-object v0

    .line 435
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/DataUsageParser;->formatWifiMobileUsage(Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 439
    new-instance v2, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda3;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AFWall"

    const-string v2, "Error updating data usage stats"

    .line 446
    invoke-static {v1, v2, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 448
    new-instance v1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda4;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private openAppSettings(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 2

    .line 351
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v0

    iget-object v0, v0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    const-string v1, "dev.afwall.special."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    .line 352
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object p1

    iget-object p1, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/Api;->showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private openFirewallLogs(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 3

    .line 373
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    const-class v2, Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "DATA"

    .line 375
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object p1

    iget p1, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    .line 376
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AFWall"

    const-string v1, "Error opening firewall logs"

    .line 378
    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_0
    return-void
.end method

.method private removeSupport(Landroid/view/View;I)Landroid/widget/CheckBox;
    .locals 0

    .line 622
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const/16 p2, 0x8

    .line 623
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-object p1
.end method

.method private setupExpandableView(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/view/View;I)V
    .locals 1

    .line 249
    sget v0, Ldev/ukanth/ufirewall/R$id;->expanded_options:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputexpandedOptions(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/LinearLayout;)V

    .line 250
    sget v0, Ldev/ukanth/ufirewall/R$id;->action_toggle_log:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputactionToggleLog(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/ImageView;)V

    .line 251
    sget v0, Ldev/ukanth/ufirewall/R$id;->action_open_app:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputactionOpenApp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/ImageView;)V

    .line 252
    sget v0, Ldev/ukanth/ufirewall/R$id;->action_view_logs:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputactionViewLogs(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/ImageView;)V

    .line 253
    sget v0, Ldev/ukanth/ufirewall/R$id;->blocked_count:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputblockedCount(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/TextView;)V

    .line 254
    sget v0, Ldev/ukanth/ufirewall/R$id;->last_activity:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputlastActivity(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/TextView;)V

    .line 255
    sget v0, Ldev/ukanth/ufirewall/R$id;->last_blocked_destination:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputlastBlockedDestination(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/TextView;)V

    .line 256
    sget v0, Ldev/ukanth/ufirewall/R$id;->data_usage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputdataUsage(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/TextView;)V

    iget-object p2, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->expandedPositions:Ljava/util/Set;

    .line 258
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 259
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetexpandedOptions(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->updateLogStatistics(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    .line 261
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->updateDataUsageStats(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetexpandedOptions(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    :goto_0
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->updateLogNotificationIcon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    .line 267
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->updateLogsIconVisibility(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    .line 268
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->applyThemeColors(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    .line 270
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetactionToggleLog(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance p3, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetactionOpenApp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance p3, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetactionViewLogs(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance p3, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda2;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private toggleExpansion(Landroid/view/View;I)V
    .locals 2

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->expandedPositions:Ljava/util/Set;

    .line 237
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->expandedPositions:Ljava/util/Set;

    .line 238
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 239
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetexpandedOptions(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->expandedPositions:Ljava/util/Set;

    .line 241
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetexpandedOptions(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->updateLogStatistics(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    .line 244
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->updateDataUsageStats(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    :goto_0
    return-void
.end method

.method private toggleLogNotification(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 8

    const-string v0, "AFWall"

    const-string v1, "Toggling log notification for UID "

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 329
    invoke-static {v3}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v3

    const-class v4, Ldev/ukanth/ufirewall/log/LogPreference;

    .line 330
    invoke-virtual {v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v6, Ldev/ukanth/ufirewall/log/LogPreference_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v7

    iget v7, v7, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    .line 331
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v5}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/Where;->querySingle()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/log/LogPreference;

    if-eqz v3, :cond_0

    .line 334
    invoke-virtual {v3}, Ldev/ukanth/ufirewall/log/LogPreference;->isDisable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    xor-int/lit8 v3, v2, 0x1

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    iget v1, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": currently disabled="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", new disabled state="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    iget v1, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v1, v3}, Ldev/ukanth/ufirewall/util/G;->updateLogNotification(IZ)V

    .line 343
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->updateLogNotificationIcon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    .line 344
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->applyThemeColors(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Error toggling log notification"

    .line 346
    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_0
    return-void
.end method

.method private updateDataUsageStats(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 2

    .line 432
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda5;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 455
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateLogNotificationIcon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 286
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/log/LogPreference;

    .line 287
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v4, Ldev/ukanth/ufirewall/log/LogPreference_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v5

    iget v5, v5, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    .line 288
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v3}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->querySingle()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/ukanth/ufirewall/log/LogPreference;

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {v1}, Ldev/ukanth/ufirewall/log/LogPreference;->isDisable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 292
    :cond_0
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetactionToggleLog(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 293
    sget v0, Ldev/ukanth/ufirewall/R$drawable;->ic_notifications_off_black_24dp:I

    goto :goto_0

    .line 294
    :cond_1
    sget v0, Ldev/ukanth/ufirewall/R$drawable;->ic_notifications_on_black_24dp:I

    .line 292
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AFWall"

    const-string v2, "Error updating notification icon"

    .line 297
    invoke-static {v1, v2, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 298
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetactionToggleLog(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$drawable;->ic_notifications_on_black_24dp:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private updateLogStatistics(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 12

    const-string v0, "Last activity: -"

    const-string v1, "Last blocked: -"

    const-string v2, "Last blocked: "

    const-string v3, "Last: "

    const-string v4, "Blocked: "

    .line 384
    :try_start_0
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v5

    iget v5, v5, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/4 v6, 0x0

    new-array v7, v6, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 387
    invoke-static {v7}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v7

    const-class v8, Ldev/ukanth/ufirewall/log/LogData;

    .line 388
    invoke-virtual {v7, v8}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v10, Ldev/ukanth/ufirewall/log/LogData_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 389
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v7, v9}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v7

    .line 390
    invoke-virtual {v7}, Lcom/raizlabs/android/dbflow/sql/language/Where;->count()J

    move-result-wide v9

    .line 392
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetblockedCount(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v4, v6, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 395
    invoke-static {v4}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v4

    const-class v7, Ldev/ukanth/ufirewall/log/LogData;

    .line 396
    invoke-virtual {v4, v7}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v4

    new-array v7, v8, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v8, Ldev/ukanth/ufirewall/log/LogData_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 397
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v5

    aput-object v5, v7, v6

    invoke-virtual {v4, v7}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v4

    sget-object v5, Ldev/ukanth/ufirewall/log/LogData_Table;->timestamp:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 398
    invoke-virtual {v4, v5, v6}, Lcom/raizlabs/android/dbflow/sql/language/Where;->orderBy(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Z)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v4

    .line 399
    invoke-virtual {v4}, Lcom/raizlabs/android/dbflow/sql/language/Where;->querySingle()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/ukanth/ufirewall/log/LogData;

    if-eqz v4, :cond_2

    .line 403
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MMM dd, HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 404
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v4}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetlastActivity(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {v4}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 409
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 410
    invoke-virtual {v4}, Ldev/ukanth/ufirewall/log/LogData;->getHostname()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 411
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    .line 413
    :cond_0
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetlastBlockedDestination(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 415
    :cond_1
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetlastBlockedDestination(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 418
    :cond_2
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetlastActivity(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetlastBlockedDestination(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AFWall"

    const-string v4, "Error updating log statistics"

    .line 423
    invoke-static {v3, v4, v2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 424
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetblockedCount(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Blocked: -"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetlastActivity(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetlastBlockedDestination(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateLogsIconVisibility(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 8

    const/16 v0, 0x8

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 359
    invoke-static {v2}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v2

    const-class v3, Ldev/ukanth/ufirewall/log/LogData;

    .line 360
    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v4, Ldev/ukanth/ufirewall/log/LogData_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v5

    iget v5, v5, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    .line 361
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v2

    .line 362
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/Where;->count()J

    move-result-wide v2

    .line 364
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetactionViewLogs(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AFWall"

    const-string v3, "Error checking log availability"

    .line 366
    invoke-static {v2, v3, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 367
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetactionViewLogs(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_8

    iget-boolean p2, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->useOld:Z

    if-eqz p2, :cond_0

    .line 85
    sget p2, Ldev/ukanth/ufirewall/R$layout;->main_list_old:I

    invoke-virtual {v0, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 87
    :cond_0
    sget p2, Ldev/ukanth/ufirewall/R$layout;->main_list:I

    invoke-virtual {v0, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 89
    :goto_0
    new-instance p3, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

    invoke-direct {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;-><init>()V

    .line 90
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_wifi:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_wifi(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    .line 92
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->isMobileNetworkSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_3g:I

    invoke-direct {p0, p2, v3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_3g(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    goto :goto_1

    .line 95
    :cond_1
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_3g:I

    invoke-direct {p0, p2, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->removeSupport(Landroid/view/View;I)Landroid/widget/CheckBox;

    .line 98
    :goto_1
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableRoam()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_roam:I

    invoke-direct {p0, p2, v3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_roam(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    .line 101
    :cond_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableVPN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_vpn:I

    invoke-direct {p0, p2, v3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_vpn(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    .line 104
    :cond_3
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_tether:I

    invoke-direct {p0, p2, v3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_tether(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    .line 107
    :cond_4
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_lan:I

    invoke-direct {p0, p2, v3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_lan(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    .line 110
    :cond_5
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_tor:I

    invoke-direct {p0, p2, v3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_tor(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    .line 114
    :cond_6
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemtext:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputtext(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/TextView;)V

    .line 115
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemicon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputicon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/ImageView;)V

    .line 117
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->disableIcons()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgeticon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->activity:Landroid/app/Activity;

    .line 119
    sget v4, Ldev/ukanth/ufirewall/R$id;->imageHolder:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_7
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 124
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

    .line 125
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_wifi:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_wifi(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    .line 126
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->isMobileNetworkSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_3g:I

    invoke-direct {p0, p2, v3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_3g(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    goto :goto_2

    .line 129
    :cond_9
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_3g:I

    invoke-direct {p0, p2, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->removeSupport(Landroid/view/View;I)Landroid/widget/CheckBox;

    .line 131
    :goto_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableRoam()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 132
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_roam:I

    invoke-direct {p0, p2, v2, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    .line 134
    :cond_a
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableVPN()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_vpn:I

    invoke-direct {p0, p2, v2, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    .line 137
    :cond_b
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 138
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_tether:I

    invoke-direct {p0, p2, v2, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    .line 140
    :cond_c
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 141
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_lan:I

    invoke-direct {p0, p2, v2, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    .line 143
    :cond_d
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 144
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemcheck_tor:I

    invoke-direct {p0, p2, v2, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/view/View;ZI)Landroid/widget/CheckBox;

    .line 147
    :cond_e
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemtext:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputtext(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/TextView;)V

    .line 148
    sget v0, Ldev/ukanth/ufirewall/R$id;->itemicon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputicon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/ImageView;)V

    .line 149
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->disableIcons()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 150
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgeticon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->activity:Landroid/app/Activity;

    .line 151
    sget v4, Ldev/ukanth/ufirewall/R$id;->imageHolder:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_3
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->listApps:Ljava/util/List;

    .line 156
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Ldev/ukanth/ufirewall/Api$PackageInfoData;)V

    .line 158
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->showUid()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 159
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgettext(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v4

    invoke-virtual {v4}, Ldev/ukanth/ufirewall/Api$PackageInfoData;->toStringWithUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 161
    :cond_10
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgettext(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v4

    invoke-virtual {v4}, Ldev/ukanth/ufirewall/Api$PackageInfoData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_4
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v0

    iget v0, v0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    .line 167
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgeticon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v4, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p2, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda6;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Landroid/view/View;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgettext(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, p2, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda7;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Landroid/view/View;I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v0

    iget-object v0, v0, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appinfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_11

    .line 172
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v3

    if-nez v4, :cond_11

    .line 174
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgettext(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->userColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 177
    :cond_11
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgettext(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->sysColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    :goto_5
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->disableIcons()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-nez v4, :cond_13

    .line 181
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    iget-object v1, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->pkgName:Ljava/lang/String;

    const-string v4, "dev.afwall.special."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 182
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgeticon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    sget v4, Ldev/ukanth/ufirewall/R$drawable;->ic_unknown:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 184
    :cond_12
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgeticon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v4

    iget-object v4, v4, Ldev/ukanth/ufirewall/Api$PackageInfoData;->cached_icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    iget-boolean v1, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->icon_loaded:Z

    if-nez v1, :cond_14

    if-eqz v0, :cond_14

    .line 189
    :try_start_0
    new-instance v0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$LoadIconTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$LoadIconTask;-><init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$LoadIconTask-IA;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v7

    aput-object v7, v4, v2

    iget-object v7, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    .line 190
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    aput-object v7, v4, v3

    aput-object p2, v4, v6

    .line 189
    invoke-virtual {v0, v1, v4}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$LoadIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    nop

    goto :goto_6

    .line 197
    :cond_13
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgeticon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->activity:Landroid/app/Activity;

    .line 198
    sget v4, Ldev/ukanth/ufirewall/R$id;->imageHolder:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_14
    :goto_6
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_wifi(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 202
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_wifi(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    iget-boolean v1, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->context:Landroid/content/Context;

    .line 205
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->isMobileNetworkSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 206
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_3g(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 207
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_3g(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    iget-boolean v1, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 210
    :cond_15
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableRoam()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 211
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_roam(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/widget/CheckBox;Ldev/ukanth/ufirewall/Api$PackageInfoData;I)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_roam(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    .line 213
    :cond_16
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableVPN()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 214
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_vpn(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/widget/CheckBox;Ldev/ukanth/ufirewall/Api$PackageInfoData;I)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_vpn(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    .line 216
    :cond_17
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 217
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_tether(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/widget/CheckBox;Ldev/ukanth/ufirewall/Api$PackageInfoData;I)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_tether(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    .line 219
    :cond_18
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 220
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_lan(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    invoke-direct {p0, v0, v1, v6}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/widget/CheckBox;Ldev/ukanth/ufirewall/Api$PackageInfoData;I)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_lan(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    .line 222
    :cond_19
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 223
    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetbox_tor(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addSupport(Landroid/widget/CheckBox;Ldev/ukanth/ufirewall/Api$PackageInfoData;I)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p3, v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fputbox_tor(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/widget/CheckBox;)V

    .line 227
    :cond_1a
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->applyHighContrastCheckboxTint(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    .line 229
    invoke-direct {p0, p3, p2, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->setupExpandableView(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Landroid/view/View;I)V

    .line 230
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addEventListenter(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    return-object p2
.end method
