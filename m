Return-Path: <usb-storage+bncBDVIJONZ3YDRB7XATOIAMGQENN722CY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 075F34B3135
	for <lists+usb-storage@lfdr.de>; Sat, 12 Feb 2022 00:25:52 +0100 (CET)
Received: by mail-yb1-xb46.google.com with SMTP id v10-20020a05690204ca00b0061dd584eb83sf21835506ybs.21
        for <lists+usb-storage@lfdr.de>; Fri, 11 Feb 2022 15:25:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1644621951; cv=pass;
        d=google.com; s=arc-20160816;
        b=hu5lTA4jLy0ZpUQVPCm1707ZR3tOmXavvRI4/WrKUf5gA6qVdH3igmB/BHCZs+12zd
         o5htfD2FN2t55IMGDoK0hUlxQX3DOKmRVA0MKDx46TlsU0Gh7LtwJEVYTqZSMNx36uiv
         VHuoxUIMfzQaHI3eeI8RrEzLPaqOXfl0VqGsli7+sXFtouo9ewsB8tXDhW7H77CUlHUs
         GLd7ak6qqiR0tQsrp/C19e9MjA7THwMb//6JuSuE55UPRjM5YKOyO/xulQuh22leHUBx
         mWHd1eoVft9lad1c+NNm2ljBgRdJzYudendfKWAcn/y0JuIWeQSWTSDxJXdKVzu7NGj+
         B+Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=SXwSvqjd7V4ipRagINNasJlwAB1VGGqbFCMozBD6QVs=;
        b=nR6/naYdeZOerKUiQdX/0DL7ZftbjFn6cAQLKESw2iQvtHq0oxqVRFBj9yUtPCBrbw
         uVH1VXqdVl+uYQG4yhSK40EJ7gJpd/dYZ/W4MFuIjiZ2oWLzRozDNf9b3RGzXOBhC6PP
         u4oy6I5Sd07iXlwPHJJayDxTvUYW63RmKB53z2EJmt0AlVXm0Zydw5yFUKL4hsKXH9xS
         A4asIOd/HIv429L2ToDuCNdUDm9NA9kOWQ2pc6XuCGHiplRH9hKgjax4l4q8ULUBTCNN
         1Dlxyd4V4oM1ehhXUC3yQb4q8MclY2+utcriRZ8wNc9hkSSyWgwXvRyLhwaz7MMX1Ajt
         qCsA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=M3rbcvnS;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SXwSvqjd7V4ipRagINNasJlwAB1VGGqbFCMozBD6QVs=;
        b=QALKe2AItRLy+ZswOmhmD7FzIPGNARNUgR637BES84vEXp9b44CLyvLFmWyfwGkGTW
         U1PWjpoDiiCx5Ixyjq3q9FhFQNCS6bPPq6EaZsMx3DsLcT7ijhRBvGuUqyRQcMGnsYB/
         FPd3DQPiF8qH33K2gRyRULI1wlrhrI+ddSpIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SXwSvqjd7V4ipRagINNasJlwAB1VGGqbFCMozBD6QVs=;
        b=D2Qf+c1QoucVWfzT+PqSnWijPvaW44JivSND2iLoUUmQXOYk29MctH/wQvd4R2sAd3
         6TQnrRX7O0TqvfMcUAS9VcXA6S9AZlFzJeIphcU/zQLPRYq5eKysR3t6zfpGRgENHGIO
         9JrFQUkZ+FdeTFXzjThpSt699f3ST0lVogA33G7UYLh4VGzel3QLWrxc9OAcCVOOKexi
         +ppPVsCgiNAI3l5jSzb4/8EjFM6or5/KsY38rJdkSfGZrdmXuf68fjj0YpUhlszr4NUK
         78Kqy+c49vlNJk9gvSeHNPKIeOKoDzfQv4otWinUXMDWAkAuk6LCzyipJelbDZO6iqUX
         aXPQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5331X3Ey/XP6obo8MEfsw/H04iPZRGW88ZmIsmy34/TGvydbvSJv
	r+9ckyaZSJ6zk1dMFdJEUkCCkQ==
X-Google-Smtp-Source: ABdhPJzPCjmsELm+NOJfhcyrh6U0oA2yiaKDcEbh3v8QP84JgduEXEAyw54hKN8HcxKiEhyVsIG+Ow==
X-Received: by 2002:a25:84c6:: with SMTP id x6mr3797144ybm.593.1644621950896;
        Fri, 11 Feb 2022 15:25:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a81:34d8:: with SMTP id b207ls5223921ywa.9.gmail; Fri, 11
 Feb 2022 15:25:50 -0800 (PST)
X-Received: by 2002:a81:ee0c:: with SMTP id l12mr4346024ywm.57.1644621950028;
        Fri, 11 Feb 2022 15:25:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1644621950; cv=none;
        d=google.com; s=arc-20160816;
        b=Hucjni/WAKyPv+xKSjcVaBFYDs3s2Lkjwy4V8+WR57E2AW/w77olVXhrRkJBpbXgde
         RpbomK/nA6p+qnK/4oh+aXRa0sMH+Hym7d+pwghTnhVrbTKOK6mPVVTCSwOy/kHdKN1X
         YXbHPfG/6lCYcRreHNUc5iRSleOf4h4HrT0Uan978zaN0psaZ8ZB+4dwukOuH4hIusWM
         8XkT0++LiKn+l9cuns2yULYBoLm74WP1/CCrc7RJTXmY2C1jpAqxhiW/L0hMCW/U85B8
         +GaLt6vQT+L6KzUqMkzg5SgTH/rS3KhI5VwfB4lPzhOaqudmMln7qikVy+KqW/9fF5rw
         f7Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5R0nsiliDgL0ynUW40gdfiEgZXxp7s7CGGFe6zRPCfc=;
        b=AD2mClfG44qSDjz8M5sB6dyFZQzQ3cHOSsmYYXxeUntT85V2P3wKvfhpBA3SJbAz33
         5T8mNxysiONkAq2jNCnVUc/p0nETD1/H5VxRz23TyuD71xuIneIx/fwq3WrbI6F3A8v8
         whUv/e4C3VJWURKnbeLlbGvcf8rAYsHNyNJFpDh5EKAcY4+uhVDZL2hxnYQvB60J73m/
         FoJQP4ivg9CKMDVKifnLk7ajhqXjCmazhba0boLlgFziFH1aiv/fNvwt+1TB5xm/X+kw
         2W0fkVHEe2ehpgleD6u7y7oxyHaxbq+SttoK4e5lFLRtidx1TjF2dp9r/XqGq6JS4Zlx
         9hQQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=M3rbcvnS;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by mx.google.com with ESMTPS id i16si6568401ybs.308.2022.02.11.15.25.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Feb 2022 15:25:50 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 21BIuv6G015600;
	Fri, 11 Feb 2022 23:25:35 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by mx0b-00069f02.pphosted.com with ESMTP id 3e5g98ace7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Feb 2022 23:25:35 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 21BNG7nB020793;
	Fri, 11 Feb 2022 23:25:34 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by userp3020.oracle.com with ESMTP id 3e1jpykk3j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Feb 2022 23:25:34 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 21BNPTtF094578;
	Fri, 11 Feb 2022 23:25:33 GMT
Received: from ca-mkp.mkp.ca.oracle.com (ca-mkp.ca.oracle.com [10.156.108.201])
	by userp3020.oracle.com with ESMTP id 3e1jpykk0v-4;
	Fri, 11 Feb 2022 23:25:33 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-usb@vger.kernel.org,
        Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
        linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        Alan Stern <stern@rowland.harvard.edu>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [PATCH 0/2] Add scsi_done_direct() to complete
 request directly.
Date: Fri, 11 Feb 2022 18:25:27 -0500
Message-Id: <164462189850.7606.17045798542627013831.b4-ty@oracle.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220201210954.570896-1-sebastian@breakpoint.cc>
References: <20220201210954.570896-1-sebastian@breakpoint.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-GUID: 4b-r61w-vgKInF0RZh4svTxDheC53G27
X-Proofpoint-ORIG-GUID: 4b-r61w-vgKInF0RZh4svTxDheC53G27
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=M3rbcvnS;
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

On Tue, 1 Feb 2022 22:09:52 +0100, Sebastian Andrzej Siewior wrote:

> This mini series adds scsi_done_direct() in order to complete scsi
> requests directly via blk_mq_complete_request_direct(). This used by the
> usb-storage driver.
> 
> Sebastian
> 

Applied to 5.18/scsi-queue, thanks!

[1/2] scsi: Add scsi_done_direct() for immediate completion.
      https://git.kernel.org/mkp/scsi/c/b84b6ec0f976
[2/2] usb: storage: Complete the scsi request directly.
      https://git.kernel.org/mkp/scsi/c/23fe075519c6

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/164462189850.7606.17045798542627013831.b4-ty%40oracle.com.
