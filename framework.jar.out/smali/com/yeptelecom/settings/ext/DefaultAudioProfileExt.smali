.class public Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;
.super Landroid/content/ContextWrapper;
.source "DefaultAudioProfileExt.java"

# interfaces
.implements Lcom/yeptelecom/settings/ext/IAudioProfileExt;


# instance fields
.field private mCheckboxButton:Landroid/widget/RadioButton;

.field private mContext:Landroid/app/Fragment;

.field private mHasMoreRingtone:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:Landroid/view/View;

.field private mSummary:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mTextView:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 27
    iput-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mImageView:Landroid/widget/ImageView;

    .line 28
    iput-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mSummary:Landroid/widget/TextView;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mHasMoreRingtone:Z

    .line 36
    invoke-virtual {p0}, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method


# virtual methods
.method public createView(I)Landroid/view/View;
    .locals 2
    .parameter "defaultLayoutId"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    return-object v0
.end method

.method public getPrefImageView(I)Landroid/view/View;
    .locals 1
    .parameter "defaultIVId"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mImageView:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPrefRadioButton(I)Landroid/view/View;
    .locals 1
    .parameter "defaultRBId"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 66
    iget-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getPreferenceSummary(I)Landroid/view/View;
    .locals 1
    .parameter "defaultSummaryId"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mSummary:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPreferenceTitle(I)Landroid/view/View;
    .locals 1
    .parameter "defaultTitleId"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mTextView:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onPreferenceTreeClick(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "scenario"
    .parameter "fragment"
    .parameter "key"
    .parameter "className"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 40
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v0, p1}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v2, args:Landroid/os/Bundle;
    iput-object p2, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mContext:Landroid/app/Fragment;

    .line 43
    const-string/jumbo v0, "profileKey"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mContext:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v1, p4

    move-object v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 47
    .end local v2           #args:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public setRingerVolume(Landroid/media/AudioManager;I)V
    .locals 2
    .parameter "audiomanager"
    .parameter "volume"

    .prologue
    const/4 v1, 0x0

    .line 80
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 81
    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 82
    return-void
.end method

.method public setRingtonePickerParams(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 75
    const-string v0, "android.intent.extra.ringtone.SHOW_MORE_RINGTONES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yeptelecom/settings/ext/DefaultAudioProfileExt;->mHasMoreRingtone:Z

    .line 77
    return-void
.end method

.method public setVolume(Landroid/media/AudioManager;II)V
    .locals 1
    .parameter "audiomanager"
    .parameter "streamType"
    .parameter "volume"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 86
    return-void
.end method
