Return-Path: <usb-storage+bncBDVIJONZ3YDRBOXAQTXAKGQEHHEK6AQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd46.google.com (mail-io1-xd46.google.com [IPv6:2607:f8b0:4864:20::d46])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FE8EF718
	for <lists+usb-storage@lfdr.de>; Tue,  5 Nov 2019 09:18:04 +0100 (CET)
Received: by mail-io1-xd46.google.com with SMTP id d65sf3314301iof.10
        for <lists+usb-storage@lfdr.de>; Tue, 05 Nov 2019 00:18:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572941883; cv=pass;
        d=google.com; s=arc-20160816;
        b=YmvbkP3KrcvxF4pIfTLOsJCG6/ZlMUv2a1tyYXphlT+PQoNVR2pWbzbCBISnLLpah4
         m+AtbZlBAEHkYCK45s+wX+TTYA5qutaDtnoTdH2H3qlQaf2AgO7nxJQy1VB63V7iFLyW
         DZeoTpspxZbF5BsDYqdr31kDWcisFjZ/+3mo/O/7Yqo6iI/AXXnN+Valb7D2REe/jkJx
         ShuwdcSOwRUa5+WEJjA9Sy54a1GEsfhLP/YtWCX49zCx0Ypgyq+GXEYIQI0/kZsckaiO
         CE862//nemoyHCA1mi+AI6T+EFbgOsf55mQl/2MSAeV8Sb99gWejRcnm1a0BdAaDPR3R
         0VZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=9RVhuHxl3BfCOsCO5ypiO32aKsLxfE8p0HjDZABweD0=;
        b=ALoadeGe6qdGkpezM1ga8HorIO9z2yaTHwb+rNWVMylPQMMLDHEI2kbjnRO9Rkqs/K
         otk6YRHKDIR7G135syUI7Iy+1admw65M40+rFtCA9+nkjsBgu6fku31tiCNICrcrcIHS
         tdpojTBoSA9WkN9lRTTyJ+gyRMmSdDKG88LJa5GWRWoVcXeyiHeMMBx4ukyRK9Ss/lvl
         0fHtKjwiWpxeGjHACASeo+6iepncVSXADbllNZep3Ekzk3Bbljvd/tuoO1zdUF4754Kh
         xLcL948EWlWu8sqOcvIFMawzSieEFXfC1lM5R+rX+4XpkWszDZlxub2/ymt+4DJGUmj4
         itVA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=OX+1ep7k;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9RVhuHxl3BfCOsCO5ypiO32aKsLxfE8p0HjDZABweD0=;
        b=FJXel3OvBBuWC0sT7uPG/cWJyy+pxdBRzPWCbQF9xX0FWEg2BolnJ4gIyRWPVH5DfO
         XLBkQOAAzgHMtA1P+aLIKytBmCijzsZrabat01UZtQf5xoqkrk9CMpcjeOpR0uMxzTDo
         MFFq0uVbkNr4VWo42/81r5UldhXpCrY4bVyJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9RVhuHxl3BfCOsCO5ypiO32aKsLxfE8p0HjDZABweD0=;
        b=kEIev48O/LHm2YGeNsUTqSjMqlUKRX7gq9ulLoIjVBKFhwj/snr6l127PtnGTACaiL
         6z6q7t1pD1E1tdE9JMq5AFLtU3k9fkH37odYtn1N8xiGTbmjTUrLaMtMW66o0qptOaV8
         q/gWzUMWtMQgWvVh3iqc07DroS3CbWgvDeWGKHXLSEkYB5H6Tc+PtP85Z/MhIPE6v+lr
         HB+2iWMVgMtUxVxgJhJh7PbNmtWFZjE7NM4yxAclbd6b3EQa0k0rin3L2SWGXennHCrY
         NZNR3RVy/eVMrB/8BjR8W4Zk+Uag9j14QyAqi9+s9FwcLgI8T0QQIxmMAvUVOvyKMMdz
         qXVA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWswm1qWymn+GGud/BkIwDiVZc+6sj/U+WaLFV5G9+Dut+KrlB0
	vDasnABzA33R6JrKPCCNbdvzRA==
X-Google-Smtp-Source: APXvYqwyT4xh9duA5LmHR4n/paus1NvpCrcRzr8kPV+HOXZtNUNmEBmO6QVmwnxHB+BAwDyXuziKJg==
X-Received: by 2002:a92:8748:: with SMTP id d8mr5755397ilm.125.1572941883096;
        Tue, 05 Nov 2019 00:18:03 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:1589:: with SMTP id 9ls3547839ilv.4.gmail; Tue, 05 Nov
 2019 00:18:02 -0800 (PST)
X-Received: by 2002:a92:ce06:: with SMTP id b6mr9900027ilo.14.1572941882563;
        Tue, 05 Nov 2019 00:18:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572941882; cv=none;
        d=google.com; s=arc-20160816;
        b=s1UNEMMLh22vDjI8R8wfY9bHUc991PSmpNBQsTl/YJJoZWA5aX9lDC3cjQXdSCEsEf
         7VIkgPmttmBYRzJFyTKAuymi1b8Vn3Uaqgj2Pa1Kl2Pfk1DjgwiBFKwjQGhKu8n88NJ2
         KwYvYwymNs56REIafKUfybW9KWXw+qZFYe+3fBBcXie4XsHR+UpT2oCnuI5GtL3LB/YR
         aliMOwTr81uuqLQIaJBw6ILm/kUPIHQ0W+V+aa+wmWF1X567ChtWXqessJ49/immukqQ
         0gxM18QgXVShQbr1tlh9Qhe7X/FlralBxVeNWu2MgQn+nU8pVwpApUi5YZVcwXofMXPX
         xwbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=Yuh8nhSJRJ/ZoUor/oy9hRqDcQxmnXcCZ8jg3FBxtSo=;
        b=yj4kaqDgIP92A6w9+El2YL2pxUnDOujUfDq5OXWBgH80Otc2Sw2D1MLLiecGPZPkUH
         6o9y+wk6qirAavD4O4iNJ5kuhZ3C8tdDFEFPfJs+wId8pitJXBpmJrbw9670gy3goewT
         vKVGE7krw684hrdzgdiuYRAqJEYg0DlpPCITJTBuX+VPPNDRxkfIOj/O5pm9k9P0vDHW
         uyJ0Lp7T78yUMvQhCyZRcbeKYq3tbQ4ONIhIzcLnwULEnzWT37Kri2HyOzHZBUKrQ9sU
         fQQ6O+4wCfK2gGy6zk8oKOU5B57uV7+jrBAQdr6K8edhprCkqhx6E1OXqP36tPuhsS+1
         kjNw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=OX+1ep7k;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by mx.google.com with ESMTPS id h26si25370626ild.148.2019.11.05.00.18.02
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Nov 2019 00:18:02 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA553prF106586;
	Tue, 5 Nov 2019 05:18:49 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 2w117tup18-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 05 Nov 2019 05:18:49 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA553moj181884;
	Tue, 5 Nov 2019 05:18:49 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3020.oracle.com with ESMTP id 2w3160kwn4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 05 Nov 2019 05:18:49 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xA55Ijeg016265;
	Tue, 5 Nov 2019 05:18:45 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 04 Nov 2019 21:18:45 -0800
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Cc: Hannes Reinecke <hare@suse.de>, Bart Van Assche <bvanassche@acm.org>,
        "linux-scsi\@vger.kernel.org" <linux-scsi@vger.kernel.org>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        "linux-usb\@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "usb-storage\@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
        Alan Stern <stern@rowland.harvard.edu>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191030090847.25650-1-damien.lemoal@wdc.com>
	<af516590-58dc-0377-5c54-ac63cffbafc8@acm.org>
	<BYAPR04MB5816D4B866F2E7CC421E8488E7600@BYAPR04MB5816.namprd04.prod.outlook.com>
	<a33afd2e-a7d6-5584-dc26-79fb8f3d6a97@acm.org>
	<a640ee15-515b-6811-9883-48b49ead9276@suse.de>
	<BYAPR04MB581685E630A8EA91902B2F9BE77E0@BYAPR04MB5816.namprd04.prod.outlook.com>
Date: Tue, 05 Nov 2019 00:18:42 -0500
In-Reply-To: <BYAPR04MB581685E630A8EA91902B2F9BE77E0@BYAPR04MB5816.namprd04.prod.outlook.com>
	(Damien Le Moal's message of "Tue, 5 Nov 2019 00:11:01 +0000")
Message-ID: <yq1eeym52a5.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9431 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=555
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1911050040
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9431 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=633 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1911050040
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=OX+1ep7k;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Damien,

> The SG driver can make use of this field to keep the io header resid
> as an int, with negative values indicating overflows and positive
> values underflows.

I am all for synthesizing what SG returns to userland.

That is also the case in the context of Hannes' SCSI result revamp. I
would much prefer to have well-defined and consistent internal kernel
status fields and then transmogrify those into something compatible with
what userland applications might expect. As opposed to perpetuating the
train wreck that is the current scsi_cmnd result.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/yq1eeym52a5.fsf%40oracle.com.
