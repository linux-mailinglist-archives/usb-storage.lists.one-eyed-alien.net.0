Return-Path: <usb-storage+bncBD6LRVPZ6YGRBM7XZ2RAMGQEWY7I6JQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B046F6D7B
	for <lists+usb-storage@lfdr.de>; Thu,  4 May 2023 16:05:40 +0200 (CEST)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-61b6b209e29sf3607566d6.3
        for <lists+usb-storage@lfdr.de>; Thu, 04 May 2023 07:05:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683209140; cv=pass;
        d=google.com; s=arc-20160816;
        b=aeXvTE61KFZjiiqvgcvJ3Cr4nQXoA2QQx6kOEFjw+fc6RaWYOAWrTLo/Kq4yJ19UDE
         03aRRUiLJKssms/T/+VLMQlbM19ET5VlFPPEG5GAMhsSVdOQmFcfmVuZgfscihO/ZeaE
         vwX970h3g5/31ZJ273rC/Xnvp/WRtB21YCH7UKy60sgG7ceYUosb7oypFrTE64tCmCnj
         SwwGaTwTl+TTM8OaU/XGOS8OH7R0YVXqQLemoj15Cann5DNPfZB+cQLuPYZ5sM62vM3i
         i3nm0b0Ze0J+qYCzYKTleZg1g+94dUZ+5VaXh1NnEgBZVGBVZhjqdB9UFpc6O//u9Gk+
         9HWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=OnlO79vaHxaaq1zGDAmyOBRYQCjsRlfGCj5pGmFbPoM=;
        b=KKxHkh836z02vt7flWwGq9l3TfC0n06ZPvP0zSGr084uxGjYlcjBOHSbzed0SeYJ+T
         k03UWCriD34GDyWJxsQCEJWE7N8t1YPB1rpwuqWHiaucv/rseXq5y3OtWT2HNpbG4oCq
         nNqhKgIBNhpb5T1tpaSi1ut8XLUL0fbZpXpa1D3iVKuevfSraOoYtHOGClSny6HvlWym
         YBTGD7cGWlGplhLGIbsuE5nwfJ9TE9mWYEmu9/viHXZeaev1k5DhUGXMoDRJ/MuBrC1S
         cn82abDYCb6wswEm0+4qdH6Dzq0tXmL3+Myvy1+LJ2G7L5Hn7ndkY6upY250BJaA1/rr
         n32A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1683209140; x=1685801140;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=OnlO79vaHxaaq1zGDAmyOBRYQCjsRlfGCj5pGmFbPoM=;
        b=G2KobkE2p/xq41r2m3Dzb4l7c4FLGUdy2ql1ua7y+NPn6RWL7c8tMODYmRxNIqgQ8u
         dBY/zShuzbk5rA+8jh8FA6v10Xsi9P5B//DjbCv9z5XlnOt6CJJoVm3H9rv1C40cRoQw
         hQmpsdgDhKPPzkOizc3U2uBAHw4yazkVft9/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683209140; x=1685801140;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OnlO79vaHxaaq1zGDAmyOBRYQCjsRlfGCj5pGmFbPoM=;
        b=NCmnJkFk1ZJsdKlhjpq48B2qcOZju1lvkVc9asSIu1w9TPGqUheoZaOIVS3yOCTq3u
         gyvRdxqk8hwC1zoyveTEVBJ/zZ6JsStBYsa8zECOHThLA4TBt9/20kA1XtcUoegQe9kL
         T7VsKLJfX6sHoQMEmvojBixFvXqm8rcN5QoUb1rBa12xr6RzohDUaQVJSRFh/uJlmC2j
         b7R3P07OKl/DH8DFrBFcQfcwk+YHoWeFjTB3byUkxEjgZQAKBHdX723WCnySA0wUPYkR
         kRvvUUH75gN/qdOajGqhMkEEsQjOY81m+YgpcUAPvSApoZsIWH/kTthzBOhgoFCJHXLW
         nQCw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AC+VfDweOjVXXLG/nyqX8eq/CF1/j4MLIC/4kmX7hTonxgb/WaDjrlAB
	QgW+MJ3P1DnvwiCrEP7E0GTuwg==
X-Google-Smtp-Source: ACHHUZ5Tz+K9x0ylgYNo7uq9QDj0ne4L6ODlp0rhH2VOd6s68wI1nb9FinfxKeEDNjncVTXDbZQHig==
X-Received: by 2002:a05:6214:8c1:b0:5ef:43ee:61fb with SMTP id da1-20020a05621408c100b005ef43ee61fbmr2072916qvb.6.1683209139754;
        Thu, 04 May 2023 07:05:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:449c:b0:56e:9b27:727c with SMTP id
 on28-20020a056214449c00b0056e9b27727cls4177983qvb.0.-pod-prod-gmail; Thu, 04
 May 2023 07:05:39 -0700 (PDT)
X-Received: by 2002:ad4:5be3:0:b0:5e6:3da1:70fd with SMTP id k3-20020ad45be3000000b005e63da170fdmr17140713qvc.25.1683209138866;
        Thu, 04 May 2023 07:05:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683209138; cv=none;
        d=google.com; s=arc-20160816;
        b=PiwUUV0L68WHVryooPA0hjB89c6Wi65N18OYhMyZDbUDUbVWTtV/qUD7Bnna2cV+V7
         Fr2n4LYYtOrqz5TEM2Dd4nBbIwpfYBlioJKdhju+O3ipTJShDJxuxSOepOVuATWDW01h
         ECyjkKZaAr8oPeVkdwI6zi9/cuJ65RTjklHsQkez7XvMy84hdv1q5osdGVvZqFfi2R6f
         nI6d6VdMerVn5KCnFFq3veOuHOjLInUhq147W0iCz7yAmWQDb+fG4vhfgIB3J+aJFnT1
         fvp3pb5k+WlDMyXbr8DOv5MK78pFV+lTARz55BHwzJ9gEHDsgYAdJMWtF1dAk5fLmwaY
         fMqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=AsA9AL5yrxhsDB28EDFKsNKckuStA2vdDz7u9nwLPxA=;
        b=Sh/YwB3CE8y/YwgM8UrLTNRbYGANzBqW6c5H/Ifl5TzImAQK3zOkUSh8igyW+qhAt2
         oAeaLDBUBliJfeM9euMqXRZrQoZ5vWN8FcHSaTPVfy+G+jqI/h0QcFrk+cOOkdaM1KUS
         w1+I8UD6PtVaq7byjGDu+iGE8SSxhCeB7HRTb3QYyrO543JORlEcunnKmP0gNY1Zmy7s
         15M1L5eJu6+rs99efchuKUEoXAmklVKI0roh1Ii/3CFrS7vi54ncf+pgXSDZORABHFR6
         qoPSPrg43TWSWmPUw2a6tCEarY7Gl4u88eSAEnSjV/aPNn8bVmlFLRZ+IxlDxZS9O00n
         kWwg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id r4-20020a0562140c8400b006165793d228si10825148qvr.329.2023.05.04.07.05.38
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 04 May 2023 07:05:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 414210 invoked by uid 1000); 4 May 2023 10:05:38 -0400
Date: Thu, 4 May 2023 10:05:38 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Benjamin Block <bblock@linux.ibm.com>
Cc: Oliver Neukum <oneukum@suse.com>, Hannes Reinecke <hare@suse.de>,
  Maxime Bizon <mbizon@freebox.fr>, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-scsi@vger.kernel.org,
  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Message-ID: <83fac55c-4005-416d-aad7-04bcb3fcaea2@rowland.harvard.edu>
References: <ZEllnjMKT8ulZbJh@sakura>
 <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
 <20230503102440.GL18384@t480-pf1aa2c2.fritz.box>
 <941e8420-f99f-5832-2ea9-3ba5eca545ad@suse.com>
 <20230503125137.GA1032383@t480-pf1aa2c2.fritz.box>
 <d25bfa50-b5a0-bd0e-fd14-94967e374033@suse.com>
 <97a67f78-4888-4fe7-9bfc-87d0bb6cc8b2@rowland.harvard.edu>
 <20230504085226.GC1032383@t480-pf1aa2c2.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230504085226.GC1032383@t480-pf1aa2c2.fritz.box>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6456d096@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6456d096@netrider.rowland.org
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

On Thu, May 04, 2023 at 08:52:26AM +0000, Benjamin Block wrote:
> On Wed, May 03, 2023 at 10:25:10AM -0400, Alan Stern wrote:
> > I think the best answer is to accept the patch that started this email=
=20
> > thread, perhaps with a minor change.  The driver can easily abort the=
=20
> > currently running command (if any) on its own before starting a reset.
>=20
> I don't think we would add an other layer of aborts in front of
> device/LUN reset for all SCSI targets. That's just overkill for - it
> seems - everything but USB storage, and would slow down error recovery
> considerable in some cases.

This is consistent with what I wrote.  The patch that started this email=20
thread made a change to the usb-storage driver; it did not touch any=20
part of the SCSI core.

Maxime, would you like to submit a revised version of your patch?  The=20
key difference is that it should abort the currently executing command=20
(if there is one), regardless of whether the srb value matches.

Alan Stern

> If this is supposed to be done in the SCSI ML, it would have to be a
> quirk/option IMO.
>=20
> --=20
> Best Regards, Benjamin Block        /        Linux on IBM Z Kernel Develo=
pment
> IBM Deutschland Research & Development GmbH    /   https://www.ibm.com/pr=
ivacy
> Vors. Aufs.-R.: Gregor Pillen         /         Gesch=C3=A4ftsf=C3=BChrun=
g: David Faller
> Sitz der Ges.: B=C3=B6blingen     /    Registergericht: AmtsG Stuttgart, =
HRB 243294

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/83fac55c-4005-416d-aad7-04bcb3fcaea2=
%40rowland.harvard.edu.
