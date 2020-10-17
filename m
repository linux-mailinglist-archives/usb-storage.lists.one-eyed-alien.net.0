Return-Path: <usb-storage+bncBDY3NC743AGBBO76VT6AKGQEZNMSG3Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id 585682913C2
	for <lists+usb-storage@lfdr.de>; Sat, 17 Oct 2020 21:00:12 +0200 (CEST)
Received: by mail-yb1-xb48.google.com with SMTP id z68sf6547702ybh.22
        for <lists+usb-storage@lfdr.de>; Sat, 17 Oct 2020 12:00:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602961211; cv=pass;
        d=google.com; s=arc-20160816;
        b=OhOUbzlIClqaW58mNSNPYqLC3roLnTIofQosjS7PyzaEKiv94nqFQpZEGyaCean7sP
         /5FaDO+sG2j5i446siMkSTxdx753Ih5TU1cNoluZacfzOWEEMIRcFRF1UtVFdI/yMSgb
         4/ttPReLRpidxdZlQOn/92Sztowyc/IgaLacTJAx5HBVIYy/4nFTfYunY5HmFWF61Zkq
         +XZ4d8oStncDSnm0GeqREK3SkeCaq7rS5CZONnrxhkFC/1ACW1CDINyPd0bfIyH5H0zs
         JDEXWoRyRphq5wWI2DSC3RvkblUqbRYaklD1S8mZQREwOGsaBOLEUYyIbNhjTbqp5ENN
         pxYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=6LXR+j1DyrBRH8qQT/ELefVBksfZMRkcZbB9B07XyoM=;
        b=FMNU7P745TknUVzPLscNA67+eRG9avJyEIU/7ThAXdSAGeZdJbraST+YJE0JrWa81E
         Lnrqq0cZ4HHF9qji4KAzHl1gy/1O/9bszwHiR+wDXVST81J4cDpXkuWtJ5X+NCfJK0/O
         XVKi1OyHIDYhnfgSyCY1MdoARzFYJDzW4D8g8vfWrKeY0+xr06d/o15gyGgDBEJBnGu5
         YjrNh1MGrbMZ3jRj2kLbFXPHjuz2OMtK0aupbUDBi9Ts4SEv/KFp6nc1irmzYSDKh921
         ToUx75zLy9V7IDv5UEqhmropvrE+s7GVqDJ8EZ5YitiEt26QxYyDhi90MRZ7D5F2BQy3
         o28Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.143 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6LXR+j1DyrBRH8qQT/ELefVBksfZMRkcZbB9B07XyoM=;
        b=kq8R64nbgl18qhIjJnhVyk7AL3M+bE42992KkKnuoWmt9vphTMGDWrZbAM2bwUhFx5
         iTVJe8UT7PEATrrBMpDsDmQh7pxSiUgvFmis7h1aQresn3X0Y93OeHXCHjXqGQkW04/O
         UNTioTb1zKSMz4zKbY8X7RaLdLKOluMgZONps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6LXR+j1DyrBRH8qQT/ELefVBksfZMRkcZbB9B07XyoM=;
        b=o9PWSYjq7cznb8+TsnNV0X+DZRlnjAUvQWrXK66rIt1Tx02TcMIYzZSy+yXg0Tn3U6
         f9exFcMUHX1Ye35X55CAKI2mJ2cj6Rt34Em2N3P1shI59FsRQhOVwUyfEXXiSUCyaVce
         OZ6/RFbNJnBc4CJO1K+o3Yra11NGvFi7EOfUH7zFGPOpoRjJTNFtn+a/avNpWa6Ms1G9
         BdpeVYu+/D1ZFq32if8uJ0zPcTG0JAiHxchri89SaF+e0bDTI3eqF85q2/AtPcBvXGTF
         g6fTLLDMqAsfwJ4k3kKdCbpl592b6HqPxf7YfmQFpSSYy9B8/k4A9dexdjaU6NON0p7U
         KRTQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533DCZZQopfSGHCfEP2LMlwfLqIxMJIMXQAW34Mbs2FiADbke2Wh
	DS/NZMPfobyyGZIaVfF/m7CXbw==
X-Google-Smtp-Source: ABdhPJzVkFkH38nzdz+G8Ty/C2Az0gjVCQZ0IyaLk6OmFhC2qYZ77UMtxO+V7LXUQvM5QaBbo5564w==
X-Received: by 2002:a25:d854:: with SMTP id p81mr12740099ybg.23.1602961211297;
        Sat, 17 Oct 2020 12:00:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:550a:: with SMTP id j10ls481726ybb.2.gmail; Sat, 17 Oct
 2020 12:00:10 -0700 (PDT)
X-Received: by 2002:a25:bc8c:: with SMTP id e12mr6740892ybk.506.1602961210740;
        Sat, 17 Oct 2020 12:00:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602961210; cv=none;
        d=google.com; s=arc-20160816;
        b=qgB/+uXHa9LCAmK6Z2MOeFUYELMm9Ya+x4i5FMIVUI3R4MQnUz4U4vCif/OFDb9lw9
         3YRpWHNCWyPw6qQoLRHrEcCcHbjomr9fuYYDyLJ3BNcmE0VCHgm4nML2m+g1osFwIfD4
         2JJm0ygoLwC50qjMjlOaWCUfyuGKi94iyxKjbxawFctOzeS3iLJBsw+o6P84fXqy+cXH
         OtkUmbCbZgTZZnjF0jvN9G5lqfchZP2Yr01W4XnAVevktVS9X3Ia0tg1FQN6gDZzLAnE
         Cro+JcYAT4ZN1gNDC8yp0HRbPbKnrFVoEjiGJMOIAZXgrP/Q4Nw5lyl1zFlrKzN36HnI
         DUlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=H/4I6qk6HDVIcsniPlsf0ugIovr/HIjDwzCcKkuA1aw=;
        b=cV09BM2s/Ugo0SODk7k+0Ei+xPb22DVJBDDdBPd9EP97fbxz1libHDQtoxisub7e6e
         y0di4//UTJqeKpAL6LPTSEdARXau6ufAveQ4KDJoiWyeKOsRUBxwrpRmBgnUKDlOeUxx
         wZChiTNrERgOBzWBMzHeSJKZ/JsfMG4Qw+Bvkh2h9ad2UVGTrK11DRi5sacB3DfoVuR8
         gP+jGSkW0fLHKhbeXy96QDQzu78oSd9Aj3AgEm+o4+JcwcxHVL9IotNSQHZ+ZjkqYaiK
         70ER7SrWW3ZFaDhDSO1VCz02XRYycB6hpnWkNbN5kbMS8GBa6iypQtrPhy/YZ/AxFtHj
         e6jA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.143 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0143.hostedemail.com. [216.40.44.143])
        by mx.google.com with ESMTPS id u3si2212779ybu.409.2020.10.17.12.00.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 12:00:10 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.143 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.143;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 15895182CED2A;
	Sat, 17 Oct 2020 19:00:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1434:1437:1515:1516:1518:1535:1542:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2525:2553:2561:2564:2682:2685:2693:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3355:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4470:4823:5007:6117:6742:6743:7576:7903:8660:8792:8957:9010:9025:9108:10004:10400:10450:10455:11232:11658:11914:12043:12050:12295:12296:12297:12438:12555:12663:12740:12760:12895:12986:13138:13148:13230:13231:13439:14096:14097:14181:14659:14721:19904:19999:21080:21324:21451:21627:21939:21990:30029:30034:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: jewel08_4005cbe27228
X-Filterd-Recvd-Size: 5179
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Sat, 17 Oct 2020 19:00:02 +0000 (UTC)
Message-ID: <503af4a57ca6daeb3e42a9be136dcd21e6d6e23d.camel@perches.com>
Subject: [usb-storage] Re: [Cocci] [RFC] treewide: cleanup unreachable breaks
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: trix@redhat.com, linux-kernel@vger.kernel.org, cocci
 <cocci@systeme.lip6.fr>,  alsa-devel@alsa-project.org,
 clang-built-linux@googlegroups.com,  linux-iio@vger.kernel.org,
 nouveau@lists.freedesktop.org,  storagedev@microchip.com,
 dri-devel@lists.freedesktop.org, 
 virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org, 
 linux-mtd@lists.infradead.org, ath10k@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com,
 usb-storage@lists.one-eyed-alien.net,  linux-watchdog@vger.kernel.org,
 devel@driverdev.osuosl.org,  linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org,  linux-nvdimm@lists.01.org,
 amd-gfx@lists.freedesktop.org,  linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, 
 industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org, 
 spice-devel@lists.freedesktop.org, MPT-FusionLinux.pdl@broadcom.com, 
 linux-media@vger.kernel.org, linux-serial@vger.kernel.org, 
 linux-nfc@lists.01.org, linux-pm@vger.kernel.org,
 linux-can@vger.kernel.org,  linux-block@vger.kernel.org,
 linux-gpio@vger.kernel.org,  xen-devel@lists.xenproject.org,
 linux-amlogic@lists.infradead.org, 
 openipmi-developer@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org,  linux-integrity@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-edac@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-security-module@vger.kernel.org, 
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
 bpf@vger.kernel.org,  ocfs2-devel@oss.oracle.com,
 linux-power@fi.rohmeurope.com
Date: Sat, 17 Oct 2020 12:00:01 -0700
In-Reply-To: <alpine.DEB.2.22.394.2010172016370.9440@hadrien>
References: <20201017160928.12698-1-trix@redhat.com>
	 <f530b7aeecbbf9654b4540cfa20023a4c2a11889.camel@perches.com>
	 <alpine.DEB.2.22.394.2010172016370.9440@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.143 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

On Sat, 2020-10-17 at 20:21 +0200, Julia Lawall wrote:
> On Sat, 17 Oct 2020, Joe Perches wrote:
> > On Sat, 2020-10-17 at 09:09 -0700, trix@redhat.com wrote:
> > > From: Tom Rix <trix@redhat.com>
> > > 
> > > This is a upcoming change to clean up a new warning treewide.
> > > I am wondering if the change could be one mega patch (see below) or
> > > normal patch per file about 100 patches or somewhere half way by collecting
> > > early acks.
> > > 
> > > clang has a number of useful, new warnings see
> > > https://clang.llvm.org/docs/DiagnosticsReference.html
> > > 
> > > This change cleans up -Wunreachable-code-break
> > > https://clang.llvm.org/docs/DiagnosticsReference.html#wunreachable-code-break
> > > for 266 of 485 warnings in this week's linux-next, allyesconfig on x86_64.
> > 
> > Early acks/individual patches by subsystem would be good.
> > Better still would be an automated cocci script.
> 
> Coccinelle is not especially good at this, because it is based on control
> flow, and a return or goto diverts the control flow away from the break.
> A hack to solve the problem is to put an if around the return or goto, but
> that gives the break a meaningless file name and line number.  I collected
> the following list, but it only has 439 results, so fewer than clang.  But
> maybe there are some files that are not considered by clang in the x86
> allyesconfig configuration.
> 
> Probably checkpatch is the best solution here, since it is not
> configuration sensitive and doesn't care about control flow.

Likely the clang compiler is the best option here.

It might be useful to add -Wunreachable-code-break to W=1
or just always enable it if it isn't already enabled.

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 95e4cdb94fe9..3819787579d5 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -32,6 +32,7 @@ KBUILD_CFLAGS += $(call cc-option, -Wunused-but-set-variable)
 KBUILD_CFLAGS += $(call cc-option, -Wunused-const-variable)
 KBUILD_CFLAGS += $(call cc-option, -Wpacked-not-aligned)
 KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
+KBUILD_CFLAGS += $(call cc-option, -Wunreachable-code-break)
 # The following turn off the warnings enabled by -Wextra
 KBUILD_CFLAGS += -Wno-missing-field-initializers
 KBUILD_CFLAGS += -Wno-sign-compare

(and thank you Tom for pushing this forward)

checkpatch can't find instances like:

	case FOO:
		if (foo)
			return 1;
		else
			return 2;
		break;

As it doesn't track flow and relies on the number
of tabs to be the same for any goto/return and break;

checkpatch will warn on:

	case FOO:
		...
		goto bar;
		break;


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/503af4a57ca6daeb3e42a9be136dcd21e6d6e23d.camel%40perches.com.
