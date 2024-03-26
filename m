Return-Path: <usb-storage+bncBDVIJONZ3YDRBT6GRCYAMGQEGG3KKQY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 783D288B6BF
	for <lists+usb-storage@lfdr.de>; Tue, 26 Mar 2024 02:22:25 +0100 (CET)
Received: by mail-il1-x145.google.com with SMTP id e9e14a558f8ab-36847ca6396sf46304185ab.2
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 18:22:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711416144; cv=pass;
        d=google.com; s=arc-20160816;
        b=YWgZ3XrOS6l5r0ESnllDdxALilk2TUMGfezF0CubdCzOvdR97WP0ZXuwWmD0Bpg4vU
         MWmg10cLQL+fnymkM6kEtWFRGfIvXrE/ac3B08LRJVbADifuUBBDTWJu5kZAicDP/53Z
         gFgtuMBH46h/dx3idXGivS37bruQAWyu9qqCqWZ0JGWdauZ5t/v4INirUDABtQfFoezH
         j6fZNcmY5jmwQzjOZrb5VVFuLVp+QU37nQVj32SxyFvTIqwnoihcM8bA4e/Tir3uSjCK
         KZC+IVNLO6NcMY1oZnYOQTeXIb7AHZHrmWRxBOuV1hToFpVo9c1ErrRX2XRMj69XXpaO
         STkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=klwWu2tD5+NDboevXhq5WRxYdWtBoNRezVCvlrxyfcY=;
        fh=YKZAswXU38tEIvNAJkF1Nra5D397aXmOcPM/L6Wu7RU=;
        b=g9rXIzLkbPcEPcoF1sFlwIY51Wx33netDIedKVZZNFwmNBXCSSV+cMAQC4vhjsFGEu
         +BFJauDCpU5Un3PXsH4c4yD6EofxmGjK4OcAvrbLHS7J/OCwpp9gAsGXhKJqBrcGZctt
         bxVfyxXgysKey2ve+dlfpJEJg+YzIrD68FhFHK1xyPgkE3w2/pXFeZjcnjOA+GV1qY1Y
         yJJfDHuw2ORZcMOM1QOaboAvvDbyj4q8lq4l9zw0x3Fq9sGtL2Jz3bXVKEJNfFHEdSh+
         Gnb18qYGPlK3tDaSh7aUVyFUTzJrfhD7CBKSasA+HbQq5DyHeAwarqSctQclcue3aPH1
         glCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=HdRwkKoK;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711416144; x=1712020944; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=klwWu2tD5+NDboevXhq5WRxYdWtBoNRezVCvlrxyfcY=;
        b=IP7bWh7yTOkhZ4hd7YIGjMyUxMxxtLCsUGUU376IhphXUSM/QeSB2ujaMlpef+wp6Z
         V37klLDIrx+h/ja/pr1/6Ciu6/Iu1nqVUgQcL1Ob6QOY+nNCLjme83lbflKqEGy9ekSU
         ptclxZrxAaV+B5NQJcViJrqkWRw3S2QHEvPNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711416144; x=1712020944;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=klwWu2tD5+NDboevXhq5WRxYdWtBoNRezVCvlrxyfcY=;
        b=iW34CcAStjtSlSvSThuiD60x7phM3SOW33zwRApu422+H6ONvW5sZ787DsdGSCQC59
         bKUBttWDuPEQPMPUJVOcIAo3o62jgFsMPxQhIqjAqif78mxFXUkWIrskYiwtQGOq+LUD
         gI88/lWY13sqZG3RyX6httBSR2bU5/UydzgwQ4jX7B4//LsPK4wkBWW2v+CHl+SLAo9W
         b07df1v+0maze5JciJfzs1ruNUZSUHXUBhlz89moWLadfED5ZEIeMrfEsYzvl5N8+QYk
         52mCkNWUvwGI6P7zIMZD3GDMcnNG+EKXlBYiVIKo7miThf47Ukp8HMWsJXK2DEeHFW77
         zVpw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUG6VGFM3Ehggri+zMaSOak5WUxO/v5NEkbmWsnr00WLlLWLe+sYMrs8LbuX7W7UpG4UNJKZU31znep6bs+ckf0FquMXiCDUeaM
X-Gm-Message-State: AOJu0YzJZBAtwuDusFPmf+O55N2s1vHDaigWrNvngCsG4Idzgx74MQpg
	9WEEihSAbEV7Cl2QjDSF2ucdKP6y2yatTdM7HTe66wVSxlEDlsd+bqZiUklX81o=
X-Google-Smtp-Source: AGHT+IGa7KyEf/0BQuSC2GSdwEQpAJa8Qujn8vA0t77MRDCmCcZf5WibSaP4PplWvPFAPE9QcIDwaw==
X-Received: by 2002:a92:d746:0:b0:368:9634:4dca with SMTP id e6-20020a92d746000000b0036896344dcamr3039671ilq.24.1711416143958;
        Mon, 25 Mar 2024 18:22:23 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:3388:b0:368:9d0a:4c26 with SMTP id
 bn8-20020a056e02338800b003689d0a4c26ls305379ilb.1.-pod-prod-06-us; Mon, 25
 Mar 2024 18:22:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVYkEMjNGtDkWIAmcrHa1TDpyKgPKqTX1WrI98yZ2vMGsWSkIgt1XN5fDkUxku5ZXnqn537AdmVwmRxP00dYRV+1QgA1t4uy1BMUPnrvaPy8Tuzw8c=
X-Received: by 2002:a92:d790:0:b0:368:9818:8d46 with SMTP id d16-20020a92d790000000b0036898188d46mr2542067iln.32.1711416142864;
        Mon, 25 Mar 2024 18:22:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711416142; cv=none;
        d=google.com; s=arc-20160816;
        b=aFAHD0QNLUIsgGHmEhSj5LAVfyjQ1E2LDRvsbUR+RL4ZINiH4K7J5AR+UkXjD/6akK
         0Ci/wNArSUKjUuJHvZo2gam/MJN1DexKDIdvNQOvD4qo6faB4LQkGF8DDM1kR2FQ2pNc
         F92md8Gt/TPEmtVJUS0AEZDfpjci+6pzfplREltlObRYu96/s61BbE9lmvo7vHYKk3NP
         zfluAsEh1tNA/wNg64LGdvy6Fmt7d/6OWyparh6vBxr+2do+q+5o/vfINEwqWAn5pZ/t
         FwhoyKYVlXKLK9EFfdHku8tQpgniYuOtWEvuuo/mzTUGEFPtSVRUooJNvE2Hfv5sEWf7
         V4pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=N/KeRr2q9pvDKKuCTTv7AYS0SB+2Dro+WiEupeavjcA=;
        fh=l5UTlme7znrvtufd5/qayrpM8APaVw/d/zGi9/s+HCQ=;
        b=JvYEFxSEd+cXbiIks+bGIoq8XwR2sxkH82Lx8HYU8Yuf/zEfh1TGZJdEFFy62buP+G
         PleqQTZmHtPsiupKpGnhMcyXLQ94QIGNe5DfiDyl4niH3MRmKbW14p+Y8ynQ5Rj8FzGe
         maAjSQX3Zk/BldNtF4IaH3trd/Sr8fzyK9zf8YXTVI6WJ5oEGcK4OLFKNYebhb5E7Kua
         dubnuNHXbhjeNGrOf4yHXIiAUBq/DXv+eb5/pXpd0Y4HXP/g+Ekvkgvi3dudCHWjLoPT
         rs7SH4z82ABJFAbqzGLHI2JnkOIDjt9WIXBlOmlzb0dWdjkjqB/+HfrP74ZG4sXDCJOL
         t7vg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=HdRwkKoK;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id z14-20020a92cece000000b0036577db8f47si3185772ilq.134.2024.03.25.18.22.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2024 18:22:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 42PLG26f002315;
	Tue, 26 Mar 2024 01:22:04 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3x1np2c0bu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 26 Mar 2024 01:22:03 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 42Q140is024714;
	Tue, 26 Mar 2024 01:22:03 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3x1nh6hfs2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 26 Mar 2024 01:22:03 +0000
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 42Q1Lx4C002449;
	Tue, 26 Mar 2024 01:22:02 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 3x1nh6hfkw-3;
	Tue, 26 Mar 2024 01:22:02 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-scsi@vger.kernel.org, "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>, jejb@linux.ibm.com,
        stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net, kernel-dev@igalia.com,
        kernel@gpiccoli.net,
        syzbot+c645abf505ed21f931b5@syzkaller.appspotmail.com,
        stable@vger.kernel.org, Bart Van Assche <bvanassche@acm.org>,
        John Garry <john.g.garry@oracle.com>,
        Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Subject: [usb-storage] Re: [PATCH] scsi: core: Fix unremoved procfs host
 directory regression
Date: Mon, 25 Mar 2024 21:21:45 -0400
Message-ID: <171141606218.2006662.11145964739643960309.b4-ty@oracle.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240313113006.2834799-1-gpiccoli@igalia.com>
References: <20240313113006.2834799-1-gpiccoli@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-25_26,2024-03-21_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=843 mlxscore=0 adultscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403210000 definitions=main-2403260007
X-Proofpoint-GUID: PeMcQ7PkllAYRKy9EnMQNAsITpGP4uuC
X-Proofpoint-ORIG-GUID: PeMcQ7PkllAYRKy9EnMQNAsITpGP4uuC
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=HdRwkKoK;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Wed, 13 Mar 2024 08:21:20 -0300, Guilherme G. Piccoli wrote:

> Commit fc663711b944 ("scsi: core: Remove the /proc/scsi/${proc_name} directory
> earlier") fixed a bug related to modules loading/unloading, by adding a
> call to scsi_proc_hostdir_rm() on scsi_remove_host(). But that led to a
> potential duplicate call to the hostdir_rm() routine, since it's also
> called from scsi_host_dev_release(). That triggered a regression report,
> which was then fixed by commit be03df3d4bfe ("scsi: core: Fix a procfs host
> directory removal regression"). The fix just dropped the hostdir_rm() call
> from dev_release().
> 
> [...]

Applied to 6.9/scsi-fixes, thanks!

[1/1] scsi: core: Fix unremoved procfs host directory regression
      https://git.kernel.org/mkp/scsi/c/f23a4d6e0757

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/171141606218.2006662.11145964739643960309.b4-ty%40oracle.com.
