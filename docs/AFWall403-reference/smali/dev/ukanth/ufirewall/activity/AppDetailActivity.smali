.class public Ldev/ukanth/ufirewall/activity/AppDetailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppDetailActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "AFWall"


# direct methods
.method public static synthetic $r8$lambda$w9WOwTyehlxXsT5X_W33ZlRvxqg(Ldev/ukanth/ufirewall/activity/AppDetailActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->lambda$onCreate$1(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static humanReadableByteCount(JZ)Ljava/lang/String;
    .locals 7

    if-eqz p2, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    const-string p0, "0 B"

    return-object p0

    :cond_1
    int-to-long v1, v0

    cmp-long v3, p0, v1

    if-gez v3, :cond_2

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " B"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    long-to-double p0, p0

    .line 216
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v0, v1

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    const-string v2, "kMGTPE"

    goto :goto_1

    :cond_3
    const-string v2, "KMGTPE"

    :goto_1
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const-string p2, ""

    goto :goto_2

    :cond_4
    const-string p2, "i"

    :goto_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    int-to-double v5, v0

    .line 218
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const/4 p0, 0x1

    aput-object p2, v1, p0

    const-string p0, "%.1f %sB"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initTheme()V
    .locals 3

    .line 141
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

    .line 150
    :pswitch_0
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightHighContrastTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->setTheme(I)V

    goto :goto_1

    .line 146
    :pswitch_1
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->setTheme(I)V

    goto :goto_1

    .line 143
    :pswitch_2
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppDarkTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->setTheme(I)V

    goto :goto_1

    .line 153
    :pswitch_3
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppBlackTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->setTheme(I)V

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

.method static synthetic lambda$onCreate$0(ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 60
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-static {p0, p2}, Ldev/ukanth/ufirewall/util/G;->updateLogNotification(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/Api;->showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private setTotalBytesManual(Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 9

    const-string v0, "cat "

    .line 159
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/uid_stat/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7, v8}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 165
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, v8}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, v8}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 176
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 178
    new-instance p3, Ljava/io/File;

    const-string v2, "tcp_rcv"

    invoke-direct {p3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    new-instance v2, Ljava/io/File;

    const-string v3, "tcp_snd"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    new-instance v1, Ldev/ukanth/ufirewall/activity/AppDetailActivity$1;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v8

    invoke-direct {v1, p0, v8, v4, p1}, Ldev/ukanth/ufirewall/activity/AppDetailActivity$1;-><init>(Ldev/ukanth/ufirewall/activity/AppDetailActivity;I[Ljava/lang/String;Landroid/widget/TextView;)V

    .line 192
    new-instance p1, Ldev/ukanth/ufirewall/activity/AppDetailActivity$2;

    new-array p3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v8

    invoke-direct {p1, p0, v3, p3, p2}, Ldev/ukanth/ufirewall/activity/AppDetailActivity$2;-><init>(Ldev/ukanth/ufirewall/activity/AppDetailActivity;I[Ljava/lang/String;Landroid/widget/TextView;)V

    .line 200
    invoke-static {v3}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p2

    .line 201
    invoke-virtual {p2, v1}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 202
    invoke-virtual {p2, p1}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception while reading tx bytes: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AFWall"

    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, v8}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, v8}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "dev.afwall.special."

    const-string v2, " : "

    .line 41
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-direct/range {p0 .. p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->initTheme()V

    .line 43
    sget v3, Ldev/ukanth/ufirewall/R$string;->traffic_detail_title:I

    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    sget v3, Ldev/ukanth/ufirewall/R$layout;->app_detail:I

    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->setContentView(I)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "appid"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 47
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "package"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 49
    :try_start_0
    sget v7, Ldev/ukanth/ufirewall/R$id;->notification_p:I

    invoke-virtual {v0, v7}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    new-array v8, v6, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 50
    invoke-static {v8}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v8

    const-class v9, Ldev/ukanth/ufirewall/log/LogPreference;

    .line 51
    invoke-virtual {v8, v9}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v8

    new-array v9, v5, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v10, Ldev/ukanth/ufirewall/log/LogPreference_Table;->uid:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v8, v9}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v8

    invoke-virtual {v8}, Lcom/raizlabs/android/dbflow/sql/language/Where;->querySingle()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldev/ukanth/ufirewall/log/LogPreference;

    if-eqz v8, :cond_0

    .line 55
    invoke-virtual {v8}, Ldev/ukanth/ufirewall/log/LogPreference;->isDisable()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    :cond_0
    new-instance v8, Ldev/ukanth/ufirewall/activity/AppDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8, v3}, Ldev/ukanth/ufirewall/activity/AppDetailActivity$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 68
    :goto_0
    sget v7, Ldev/ukanth/ufirewall/R$id;->app_toolbar:I

    invoke-virtual {v0, v7}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar;

    .line 69
    invoke-virtual {v0, v7}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 72
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 78
    sget v7, Ldev/ukanth/ufirewall/R$id;->app_icon:I

    invoke-virtual {v0, v7}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 79
    sget v8, Ldev/ukanth/ufirewall/R$id;->app_title:I

    invoke-virtual {v0, v8}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 80
    sget v9, Ldev/ukanth/ufirewall/R$id;->app_package:I

    invoke-virtual {v0, v9}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 81
    sget v10, Ldev/ukanth/ufirewall/R$id;->up:I

    invoke-virtual {v0, v10}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 82
    sget v11, Ldev/ukanth/ufirewall/R$id;->down:I

    invoke-virtual {v0, v11}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 86
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 88
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->getListOfUids()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Ldev/ukanth/ufirewall/Api;->getPackagesForUser(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v13

    .line 90
    invoke-static {v5, v13, v3}, Ldev/ukanth/ufirewall/Api;->getPackageDetails(Landroid/content/Context;Ljava/util/HashMap;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const-string v13, ""

    if-eqz v5, :cond_2

    .line 91
    iget-object v14, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_2

    .line 92
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v5, v13

    .line 98
    :goto_1
    sget v14, Ldev/ukanth/ufirewall/R$id;->app_settings:I

    invoke-virtual {v0, v14}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 99
    new-instance v15, Ldev/ukanth/ufirewall/activity/AppDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v15, v0, v4}, Ldev/ukanth/ufirewall/activity/AppDetailActivity$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/activity/AppDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v15, v7

    .line 104
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    const/16 v1, 0x80

    .line 105
    invoke-virtual {v12, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 107
    :try_start_2
    invoke-virtual {v1, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 109
    :catch_1
    :try_start_3
    invoke-virtual {v1, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :goto_2
    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v11, v10, v1}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->setTotalBytesManual(Landroid/widget/TextView;Landroid/widget/TextView;I)V

    const/4 v3, 0x0

    goto :goto_4

    .line 115
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    sget v6, Ldev/ukanth/ufirewall/R$drawable;->ic_unknown:I

    invoke-virtual {v12, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ltz v3, :cond_4

    .line 117
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4, v1, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ldev/ukanth/ufirewall/Api;->getSpecialDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 119
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4, v1, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ldev/ukanth/ufirewall/Api;->getSpecialDescriptionSystem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v3}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v3}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v14, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4
    if-eqz v5, :cond_5

    .line 127
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v14, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5

    .line 130
    :cond_5
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 134
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v14, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_5
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 233
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 228
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 225
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
