Return-Path: <usb-storage+bncBAABBJXFZGRAMGQE2CLNOWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B996F5A50
	for <lists+usb-storage@lfdr.de>; Wed,  3 May 2023 16:41:44 +0200 (CEST)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-191896a9d1dsf1237942fac.0
        for <lists+usb-storage@lfdr.de>; Wed, 03 May 2023 07:41:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683124902; cv=pass;
        d=google.com; s=arc-20160816;
        b=mBGQnRQXRifgnRltp5SCPtf1a7mA69HXdrNW+TnUbPiIPzD73DPMs2Au/tyfSkwM+C
         fqIr05+fSTPETe8lJjrBm+NyootP4ep9eMBeEcX3XB3quNnNNt8U3o3SR5UIhlBfp9FD
         osaRA7HE344vMHIvhQ2DrW3Ie3uBgh/A6DPpVcVQJgE6gI+oA/93pGIj0GO/FmGi7Dy3
         Bd9TulxaTkn5I3bDznDwzN+Bk7awRRzI4XNs8+dbzESF29alxjPd8N9ZxwMoiD0hNVJG
         WxdFQuJt25SLedYz+rVTd7NhCEmMZVPapoy3RFfVxODQyTBMQZX6j/wd1UuIcw0kfjJm
         976g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:sender:in-reply-to:content-disposition
         :references:message-id:subject:cc:to:from:date;
        bh=XdXtfBSkchucGHzgUTwLGB1gESmUGryW2W6GsYMC/AA=;
        b=d3b/c589UKJf21iuwgZ3jIX543YXnB/xCRBB3/r7aEm0dUnTmUutBBc69ImJUXm73P
         MVtGluRQ4kc9DMkvFBERPhpJ/QfM/0rJppJbVfYRUoafvt4J+8aMh4/lkeMydph9mTRC
         k8w0m7GnDFnnksYKAesh5Jvu2RAkwrU848vo/nyqKv/3YQK3yCb2QQ5ACWSbSHdePy7c
         1okSdAbfH9qTPddPspQxw9iWsilWUk6rxXzWAtGbvd+xsgICcV5B30+9YePOtf32uMpF
         rLdeM/o7V1Oe4rEFLpcdzb2BH97vIT92xzciWD8b1J8KEbeIFlABrR+OYXn3s+x4NKhY
         SgSg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=WtppysMd;
       spf=pass (google.com: domain of bblock@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=bblock@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683124902; x=1685716902;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding:sender
         :in-reply-to:content-disposition:references:message-id:subject:cc:to
         :from:date:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XdXtfBSkchucGHzgUTwLGB1gESmUGryW2W6GsYMC/AA=;
        b=HHMSUMqAQFu0+efJXXXEmnkQYprc8GZI/EP9HKvYKEyZOmiHuaWW4KJJPuRvtqwbpI
         m4uzwDipIijyk3CCbxXNzor4b6QvoUhyjt5ifL03a08TdWpvf6tLS11Iyjvv75u+CTRK
         uBFOgxxeWD6I+uOq6h/+A6E7kGvw5HtQ2zS0kc3KeH+Tlo0AxQHWuOIgrb9D+/34q6aO
         63gdjpfeJF91fdYDT4Q3baJzLDbJZzlaCwa9fY+Ok4GFnC8xlDf0fiJw4HCOzNujIdmB
         1DSwyn4kZwcUDlmGcjlMZDfg5O2Q8q1lSIq7UzHVRfAguSD9anme9xVqKL0z8pATWelk
         UNoA==
X-Gm-Message-State: AC+VfDwmOGGXIYWwIiW7f/Jt7XSEHUzwXd0NK8tK+4l6lptLotc1Mr1P
	5ci6CT6494spfLvMKxpT5aawPQ==
X-Google-Smtp-Source: ACHHUZ6au2GUf6Qb71Ag96iFK4PiTGR7sf9rnKHxG01jvdK61Kna/2D3blPafxTYTxKr6yPH8wPQ0g==
X-Received: by 2002:a05:6870:3d8b:b0:177:9150:e7ba with SMTP id lm11-20020a0568703d8b00b001779150e7bamr8403796oab.3.1683124902648;
        Wed, 03 May 2023 07:41:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:d111:b0:192:954d:4ae1 with SMTP id
 e17-20020a056870d11100b00192954d4ae1ls1126863oac.0.-pod-prod-gmail; Wed, 03
 May 2023 07:41:42 -0700 (PDT)
X-Received: by 2002:a05:6870:2b06:b0:17f:f1f4:b006 with SMTP id ld6-20020a0568702b0600b0017ff1f4b006mr8432446oab.11.1683124902314;
        Wed, 03 May 2023 07:41:42 -0700 (PDT)
Received: by 2002:a05:6808:2085:b0:38e:9a2:5dd5 with SMTP id 5614622812f47-39252171fc9msb6e;
        Wed, 3 May 2023 05:51:48 -0700 (PDT)
X-Received: by 2002:a92:dd12:0:b0:328:a646:8bf5 with SMTP id n18-20020a92dd12000000b00328a6468bf5mr11475317ilm.27.1683118308288;
        Wed, 03 May 2023 05:51:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683118308; cv=none;
        d=google.com; s=arc-20160816;
        b=v3lQFzvtJVhNcPgFS9/mfA/KWojOakZG5MlLkUxEZ1YTynrJDohdnSQ4Xt286hGaFx
         I+ZgkPBFo8EwvWF65R+hU29HX/PhKsSWuDlBfDWX9xVUf5a+Em3qvSJrpO3pLXsOvHbw
         a6XEZVOn1zusOJHe7YsIfXT0qgee83LjrRSGZAG6hf00aKFuZYLIK5q7mF0OXBz8j+Rn
         Lk6iGnGh7V9vQgzl3qgjbXcsILQHyk2TPbSZkoNR1oEsJJptnBmGRFcl/nYwuinybEa1
         cMKEgYpsE2bq4sw79lVwRemo0xsUgVtVOnL5QuC3TKge2d5a0QXbxlh03xLoVfEiBqIo
         IqyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:sender:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=0061/xbyDqysihiujashCxzv/PhNTXjn9gU/e9FKXtM=;
        b=V1ECENJf0M3g0BI4rV3FfsgpXu2oAdY5RQB3WFVuzt74V/ZKbz3IdkwCCarsLG8ni7
         E9dWe58VhxJ3yx2Af5+T/FVlH6WVPm8ENTJMvhHWbscl8ziojnCnm2pneD9ZUAfPN/iN
         v9Nskg2d3zzfCX+Zzn/kQXZhjT0siB1eMsZqwDVAN6Kcbx6VbY90forgrXz0C09cvfe7
         JVDpI72hwXHinCpenA2g9oE2ask440K1X0WlHrMwwOPqE0iKSbIOEng1FItCm27Kk78w
         q9loD6+Kz83ricIXJW3/kA1ejG3ZmATtU+UCgY2kejsoU3xtgJdYFVE91nIhv5WbmZEs
         ykMA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=WtppysMd;
       spf=pass (google.com: domain of bblock@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=bblock@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id z16-20020a92d190000000b0032612e7644dsi14809856ilz.153.2023.05.03.05.51.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 May 2023 05:51:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of bblock@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0353727.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 343Cnwx0031021;
	Wed, 3 May 2023 12:51:47 GMT
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com [169.51.49.102])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qbqk1rw4u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 03 May 2023 12:51:45 +0000
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
	by ppma06ams.nl.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 343CdFsR016650;
	Wed, 3 May 2023 12:51:40 GMT
Received: from smtprelay03.fra02v.mail.ibm.com ([9.218.2.224])
	by ppma06ams.nl.ibm.com (PPS) with ESMTPS id 3q8tgg280v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 03 May 2023 12:51:40 +0000
Received: from smtpav03.fra02v.mail.ibm.com (smtpav03.fra02v.mail.ibm.com [10.20.54.102])
	by smtprelay03.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 343Cpcev5374602
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 3 May 2023 12:51:38 GMT
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 306EC2004B;
	Wed,  3 May 2023 12:51:38 +0000 (GMT)
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1B85C20043;
	Wed,  3 May 2023 12:51:38 +0000 (GMT)
Received: from t480-pf1aa2c2 (unknown [9.152.212.95])
	by smtpav03.fra02v.mail.ibm.com (Postfix) with ESMTPS;
	Wed,  3 May 2023 12:51:38 +0000 (GMT)
Received: from bblock by t480-pf1aa2c2 with local (Exim 4.96)
	(envelope-from <bblock@linux.ibm.com>)
	id 1puBxJ-004WHr-1w;
	Wed, 03 May 2023 14:51:37 +0200
Date: Wed, 3 May 2023 12:51:37 +0000
From: Benjamin Block <bblock@linux.ibm.com>
To: Oliver Neukum <oneukum@suse.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, Hannes Reinecke <hare@suse.de>,
        Maxime Bizon <mbizon@freebox.fr>, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net, linux-scsi@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Message-ID: <20230503125137.GA1032383@t480-pf1aa2c2.fritz.box>
References: <ZEllnjMKT8ulZbJh@sakura>
 <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
 <20230503102440.GL18384@t480-pf1aa2c2.fritz.box>
 <941e8420-f99f-5832-2ea9-3ba5eca545ad@suse.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <941e8420-f99f-5832-2ea9-3ba5eca545ad@suse.com>
Sender: Benjamin Block <bblock@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: IAgUAYXcCbFDCh3QIO51ooWL268T4Lp2
X-Proofpoint-GUID: IAgUAYXcCbFDCh3QIO51ooWL268T4Lp2
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-03_08,2023-05-03_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 mlxlogscore=615 mlxscore=0 clxscore=1011 lowpriorityscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305030106
X-Original-Sender: bblock@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=WtppysMd;       spf=pass (google.com:
 domain of bblock@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=bblock@linux.ibm.com;       dmarc=pass (p=REJECT sp=NONE
 dis=NONE) header.from=ibm.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On Wed, May 03, 2023 at 12:55:03PM +0200, Oliver Neukum wrote:
> On 03.05.23 12:24, Benjamin Block wrote:
> > On Wed, Apr 26, 2023 at 03:20:07PM -0400, Alan Stern wrote:
>=20
> >  From a cursory look at the logs above, SCSI ML does just try that:
> >=20
> >>> [  218.089304] sd 0:0:0:0: [sda] tag#0 abort scheduled
> >>> [  218.109297] sd 0:0:0:0: [sda] tag#0 aborting command
> >=20
> > calls `hostt->eh_abort_handler()` on the late request, and retries it
> > after success.
> >=20
> >>> [  218.359964] sd 0:0:0:0: [sda] tag#0 retry aborted command
> >>> [  225.129297] sd 0:0:0:0: [sda] tag#0 previous abort failed
> >=20
> > but it times out again, then we go straight into EH:
>=20
> And that is problematic to usb-storage
> >=20
> >>> [  225.129337] scsi host0: Waking error handler thread
> >>> [  225.129358] scsi host0: scsi_eh_0: waking up 0/1/1
> >>> [  225.129375] scsi host0: scsi_eh_prt_fail_stats: cmds failed: 0, ca=
ncel: 1
> >>> [  225.129387] scsi host0: Total of 1 commands on 1 devices require e=
h work
> >>> [  225.129402] sd 0:0:0:0: scsi_eh_0: Sending BDR
> >=20
> > IIRC in the past we used to call Abort a second time from within the EH
> > thread before trying the different resets, but that was removed at some
> > point a couple of years ago.=20

Seems like I misremembered. Can't find the commit I was thinking
happened, and the only thing that changed was that aborts moved out of
the EH thread and be asynchronous.

> > Now we add the command straight to the EH
> > list, and start with the TMF LUN reset, which ought to implicitly abort
> > the command as well on the target.
>=20
> usb-storage can do a reset only on the USB device level,
> which translates to a bus reset on the SCSI level.
>=20
> And we are supposed to cancel any communication with the device
> before that.

Is that a limitation of the devices or drivers? Because then you don't
match SCSI semantics for LU reset - which aborts all running commands
on that scope among things. Which might explain the reason/choice behind
this unexpected behavior for you.

On random thought I had: in theory you could implement your own EH
strategy handler if the default one doesn't work for you. ATA and SAS do so=
.
[drivers/scsi/scsi_error.c:2285 `shost->transportt->eh_strategy_handler()`]
This can re-use parts/all of the existing escalation sequence in
`scsi_eh_ready_devs()`.

But that's no short-term fix.

--=20
Best Regards, Benjamin Block        /        Linux on IBM Z Kernel Developm=
ent
IBM Deutschland Research & Development GmbH    /   https://www.ibm.com/priv=
acy
Vors. Aufs.-R.: Gregor Pillen         /         Gesch=C3=A4ftsf=C3=BChrung:=
 David Faller
Sitz der Ges.: B=C3=B6blingen     /    Registergericht: AmtsG Stuttgart, HR=
B 243294

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20230503125137.GA1032383%40t480-pf1a=
a2c2.fritz.box.
