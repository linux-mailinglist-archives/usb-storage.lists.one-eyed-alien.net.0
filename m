Return-Path: <usb-storage+bncBCLNZ6OO5QHRBZGZ7SMAMGQEEQ7YTPA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id C559D5B5AB4
	for <lists+usb-storage@lfdr.de>; Mon, 12 Sep 2022 14:58:13 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id k19-20020a056a00135300b0054096343fc6sf5502857pfu.10
        for <lists+usb-storage@lfdr.de>; Mon, 12 Sep 2022 05:58:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662987492; cv=pass;
        d=google.com; s=arc-20160816;
        b=kOSkqHtA1GtqumNnOA2QJjlAce1JuMU0wj2SVEzofRqc7+F69qpDwRxttlyR+ky4XX
         jtm0cZf7bAh+xSkvrjbD8OxHHRecdL6WIYX5Vv/ttvjCohxR+Aki10yc0TMePkC/LpeT
         ME1N6haNHvHZpEk2vHhKX3LL1/OHR8s/JQsrsgXKIE33fpuP8jjEOvhVvcN1xZft/Bzt
         LGb4oSIPx/LxRZ4VfIOXiGx06lBQu5QqGAM2nj0f6K6Lr05zagN45KDd5wAq22tq64BT
         WThNdeVa/yCsUukbnUEw/ZZF8d+Dp/muCKAB4T8AX87SnrW8lInZnOEpWvifSU/arIpH
         7bUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=cRVoPWYCePZe3F1Dy6kPSNfq1GbKXy3eBRTFNbCh5x4=;
        b=vHfrdpuKtPQ0CBmTc3PN4rFySmaQjgyWEDM/TmDlClK3wZatrS/FYZIwrNWALCEwiD
         tKsmgwGa9d13QhV5c5ndyqIGEOj1u/tKNmYQOzrf0Ro/aYFxjRiyZ2zwAHfDInd18Yo/
         xoh0DaXAgotlVIJHAMKL/XLGYPMiG1Toy47hvK7b9RzSuNBivtmBQfX8NvThu4BCEhCa
         3Ptr0WLBDoke6a+sPAt3NdG0Uon7wiziVZBt82ytJkr3rJSiXKunWTNkdaLdnzPekBmq
         Xr9nMtgRFzCNCnq/DWUdbF0iGYUtivpR+9ttRDwRqT+uIGzSuRcPaUVAiAZDiU5NSN8p
         hniA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=T0dGpBG+;
       spf=pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=onenowy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:from:to:cc
         :subject:date;
        bh=cRVoPWYCePZe3F1Dy6kPSNfq1GbKXy3eBRTFNbCh5x4=;
        b=jrCkOH0IyKyX+Ts1MobF67NkPin0Sknlffh0Boy6k6hMB8EOGWv/go7BhGAIBgyT21
         VW917VdMFhIeP9Q75I1FaPKxuOalSkoVJTa/wJlKbSOCVihZn/A38n3/iLlzSE+B+EwF
         AXLv4yJHnrV4RloXLc/DfaED9+7q3fQndL5MI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date;
        bh=cRVoPWYCePZe3F1Dy6kPSNfq1GbKXy3eBRTFNbCh5x4=;
        b=lR+fByEA4DmiskCrHk1DdZJyVS1TzAkod3GiQzsPhnxn4Yh/fe/k9sRWKMOCd++iYX
         JNYSmrFxB6xFbFqr/1YjsEk67ekYhzWgejKt7ukM+gSxB7XxfFJBuoyfyejBLTQ5Sk5u
         2AGZvJN7gty+pbndQ93q7EX/61wCUUp86buSz6ZxYLnVXaBqxq9cMPgSw3078xgTEGjN
         D7WgTtKFquJxGjYLWb3O1xjgjbK4J62+I0s0ojZG0iIzjfBC3gQqZi1Pcbgp0M36YOcG
         LhQ0skvsZwSvc3EmPTHASXgjsrbv28KLFn0snNwhSssfRGrHmMeEQqmnkCvbV5nZ+0z6
         3zPQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3dm6NxVfBqyjQJaYQi2a22vSB3+RxvxWYQSrLViFErjJ7uLrhy
	xVU86oLyaRLtHoCbWOSr7B37CQ==
X-Google-Smtp-Source: AA6agR67OLunccQvfXgtY8sS5EzyDgW4XG04w/MvWlwm9bDHR+07spb9FiOPoI4X1fWqtztfeEheIw==
X-Received: by 2002:a05:6a00:148e:b0:536:4034:69cd with SMTP id v14-20020a056a00148e00b00536403469cdmr27809544pfu.84.1662987492413;
        Mon, 12 Sep 2022 05:58:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:e394:b0:16d:6f9a:131a with SMTP id
 g20-20020a170902e39400b0016d6f9a131als7671007ple.5.-pod-prod-gmail; Mon, 12
 Sep 2022 05:58:11 -0700 (PDT)
X-Received: by 2002:a17:902:cec5:b0:178:1ea8:913a with SMTP id d5-20020a170902cec500b001781ea8913amr10488789plg.161.1662987491455;
        Mon, 12 Sep 2022 05:58:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662987491; cv=none;
        d=google.com; s=arc-20160816;
        b=DwKZhhUGsde/AHkkrBeFGd18b1sxAbYWOR4pbF4ra7qVR4ERW9305F2YnR4llOrD2V
         x+a2rId0ofilT0Tnr21DZIQsy0DcVEno4gznKNev1tWOoCjmvZeKLG/HdPVmmwHTGOtV
         /zuHf2lwmOyKrwvw/gzrwccC+3GD91TdTcUsXemlrq5/v6tylAiaiVWhDs42kcIRc/C2
         sTa6l3kax8fK6yEeqTqtyO9fhZj7B1Cf4VvlZjqlhZw6UCy0x5FumN7ZHsreJlYjN3ko
         53SH+bR1GF/5Pzg4PI0yQx7D3dOM/loSg/+w8fZ0jukzJiQhfhQ4r3Yp25XhKtfCLG/z
         pzxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xY4qrk1/0MMoestEFqRu5d/rvu2VFBaTf/98DrxMe94=;
        b=CXtSJTJa2qbrvUJAGBUxo0B+uAJFKQpmG7Zd+D6KqifFGhlBLe9uxK2niFqqRxTaIw
         TUpSU9bB293x+zzPLFA9I8czaKD+mLk8Ow1zGmdeqdRepWhV9+zDtkX250Rlvw/mNorz
         gqf6qOf15Y7+KGzwBLGT59wk3mrbDSCadBbTwYbrQhkwNYvGL/ivH3c60DAsumtOQU3R
         BXcYyEvyUpzwOlshLJSvs40bU0atvXdZbBXYz1QaCBMRHeemmA0LlypEEe0KgsPI/pmm
         4VVQpsKJUutLCeURbp4SmxXlECbPwNxCNO75nAwc+gNhnvKV+p59h1dYfj2VmWvdiXdn
         eThA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=T0dGpBG+;
       spf=pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=onenowy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id m8-20020a170902768800b00174b326b7fdsor3128808pll.158.2022.09.12.05.58.11
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 12 Sep 2022 05:58:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:902:aa41:b0:173:1571:4025 with SMTP id c1-20020a170902aa4100b0017315714025mr26824559plr.110.1662987491131;
        Mon, 12 Sep 2022 05:58:11 -0700 (PDT)
Received: from localhost.localdomain ([110.46.146.116])
        by smtp.gmail.com with ESMTPSA id 4-20020a631944000000b00419b66846fcsm5442956pgz.91.2022.09.12.05.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 05:58:10 -0700 (PDT)
From: sunghwan jung <onenowy@gmail.com>
To: jilin@nvidia.com
Cc: atanasd@gmail.com,
	linux-usb@vger.kernel.org,
	stern@rowland.harvard.edu,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 1/1] usb: storage: Add quirk for Samsung Fit flash
Date: Mon, 12 Sep 2022 21:58:06 +0900
Message-Id: <20220912125806.7568-1-onenowy@gmail.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <095677b6-5b6c-1b35-fe9e-00dcedd0a11f@nvidia.com>
References: <095677b6-5b6c-1b35-fe9e-00dcedd0a11f@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: onenowy@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=T0dGpBG+;       spf=pass
 (google.com: domain of onenowy@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=onenowy@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

On Mon, Sep 12, 2022 at 7:56 PM Jim Lin <jilin@nvidia.com> wrote:
>On Sat, 2022-09-10 at 20:52 +0900, SungHwan Jung wrote:
>External email: Use caution opening links or attachments
>>I have found that the read rate of "samsung Bar plus" is slower than on w=
indows 11 (210mb/s -> 70mb/s) and recovered by disabling quirks (using /etc=
/modprobe.d)
>>This patch affects not only "Samsung Flash Driver FIT", but also other us=
b flash storages. (They may use the same controller?)
>>But I can't reproduce the timeout problem without quirks.
>>Could you provide information to reproduce the timeout problem or logs?
>>It may help us find other solutions to fix it.
>>
>>Thanks,
>>SungHwan.
>Issue was reproduced after device has bad block.
>
>--nvpublic

If bad blocks cause the issue, in my opinion, it's better to apply this qui=
rk by users (additional kernel parameters with a bootloader) if their flash=
 drive has bad blocks, not the kernel patch, because the performance degrad=
ation is severe for several USB storage that didn't have bad blocks.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20220912125806.7568-1-onenowy%40gmai=
l.com.
