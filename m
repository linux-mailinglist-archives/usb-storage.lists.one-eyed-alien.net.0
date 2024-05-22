Return-Path: <usb-storage+bncBD64ZMV5YYBRBHHRXCZAMGQEE2DTLCA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id D166F8CC64A
	for <lists+usb-storage@lfdr.de>; Wed, 22 May 2024 20:25:33 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-6ab8e73bc89sf1526136d6.0
        for <lists+usb-storage@lfdr.de>; Wed, 22 May 2024 11:25:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716402332; cv=pass;
        d=google.com; s=arc-20160816;
        b=X8BGpM1To1FTadUdFVK8VkZNkJaKf89IUCo9rUB2alllEYeAVFoW5/wdrv+6zJXil7
         Kqt8bSCnB6w1TnQuf2BXLWYHDmNvJFU0R5aTgm855eC83swTWwN6qq+2FA8YdwE0C66l
         +nHI/ZO1YeoyUGDOTwfabGJmyCdiL474vfHmheYbqkNfsFI4D55Ki3gr2y4uLRgYweFC
         fVZ5ipdNwU4OrVYwOayDlkos07vqOSBxaSLuW3KiXw9EVIpp+Gn/QDGYNX8hMnAFvL4V
         nE3B0Rtme7XyE1JGiV9FjmSVY/DUB49Xm+56CRntYhfmKBJAAVZujDocgiMifpadojQK
         Rb1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Th0hsN6Navl0Odc12zKTOCv7ZWzS4H4jcuxr6R0/xus=;
        fh=UZaY9LmxrIIKcoNwM6hqaVAjWKYdwVN5HBJ2iuFv4sI=;
        b=rGUZkirFXIBOXGQ8mqpfHMVYValeTKGY9LIAdncVcXRsLWYpgdI0UUjyVCNsagrbKQ
         HKkFh9+Z0a9QN8QePxCO7TkP7o3hgw3rnpdgMUxGkVrVliWLlNRVzlhcZZOsNDGIZIPp
         aCX0AbiJ8UmnHCn7/UPeUhh84bMNnZ9veb42QvkF0vIrzLkU+noJnI8w+GB5ksMSzlh0
         pKaNPc45ago35JovU557V4njdHdDkn3DrDal4Ou+38JtOj5fGBiA8j3zBnjucrkL4lwK
         50M2ol3HAFN6mc+afYgABDbf3rWXTi7v3a+RZxhQIJ6x7JHzAPAT8U5Ul1nfiraODF0W
         /XVA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716402332; x=1717007132; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Th0hsN6Navl0Odc12zKTOCv7ZWzS4H4jcuxr6R0/xus=;
        b=S8vBhiRbTpQV3ugHoJ1RADnfdyIcf4wTWctfvrobkWQ6VgSiI7Q47rgZN76+cj47dF
         ZuJWBxVgC53tsIjKASONubOrf9imM7eVKYka5Tyk4xmdn33UAr3hsj002+2V8Va78vCn
         2pgJpqDCG4k7CXGmyoBRFisqsfcmDOncnRSy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716402332; x=1717007132;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Th0hsN6Navl0Odc12zKTOCv7ZWzS4H4jcuxr6R0/xus=;
        b=nMdV+EDVksXvS3B0RZMbHdEpl5Ui80g/O3g7KQagDpmlsHRazZQvC+F4nhGZ7ip1le
         Fl85fHEZuu4ZnHWYV1vzzTezTEmZkuDm5mxenAycRq+1SDTU+6x0fxwwu/A30Ixh/IHs
         0rJdghmiPhsB/qNkRkbpGvN2D3I1uhk3MlftE4jFJTRWX/mXngjcF5r/zJUZ9/pPzYWX
         XA61m7xMdIKwmzyTVDJSF3iiAjDFsBobdTTa6YbG5a9HTXlWadimDpv8Vxfx8YSBP6VO
         egTipcQAI4i0sWA6kLVn+wtDFvsGVB4wdJoPchf788LQNnX9a9APs7UVwbJaUYj0Oe43
         pFmA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVTZLVK7E6goLWKabX/EKPew2hEEy/LEEar+Ox4xCU0K4jwvtwexrGycUwc+t25Um6fIPYqpMEZH9G8opG0mqyYtwcNSRSSPPs5
X-Gm-Message-State: AOJu0YzcQKoZRblxvkpaJK40DF0jY3xBDMRPPQ9c62/A/ssYiukS7Gac
	h1rKWBUNhkB7WNQIA7RkNI8IJ60c0zz+R1q3JTWLd0gd2pbMF1Cld+q3kZhs8Yk=
X-Google-Smtp-Source: AGHT+IGPq9+kHOauFPH7y+JDgMQddEq/UIV8JvqOJzP8OLA3qwyf9YEwXFz6BMMxRCeiXpNfMJmQwA==
X-Received: by 2002:a05:6214:29cf:b0:6a9:fdfb:9877 with SMTP id 6a1803df08f44-6ab8f53aa6cmr1097276d6.12.1716402332612;
        Wed, 22 May 2024 11:25:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:f143:0:b0:6ab:7ae2:98f3 with SMTP id 6a1803df08f44-6ab7ae29986ls19252256d6.0.-pod-prod-06-us;
 Wed, 22 May 2024 11:25:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUmvrPfEkPxFgleCJGluEHURrombMkTIH5dCnv57PJaH+srY8lye63AiERCi5jo/P2Nb4BNW17rRfngpKWto0OFy3XNtUdgq2nVNAZ+F65dxth1d8E=
X-Received: by 2002:a05:6214:2485:b0:6ab:78a9:87b5 with SMTP id 6a1803df08f44-6ab7f352e32mr718266d6.6.1716402332017;
        Wed, 22 May 2024 11:25:32 -0700 (PDT)
Received: by 2002:a05:620a:44cc:b0:792:a4c6:e0f4 with SMTP id af79cd13be357-79497ebef01ms85a;
        Wed, 22 May 2024 06:49:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXvj4CI6NrbWsydLCG4su+Ts3rZqKCFCbNvoEUqHmouODTNkTcXRwQjn5Rto2WS0rab2ogTQnywUplFyDS0/kTAv7pmtcsbaMUv01bsnTD4m6hu7jw=
X-Received: by 2002:ac8:7f4b:0:b0:43d:e767:f106 with SMTP id d75a77b69052e-43f9de7040cmr40661221cf.30.1716385796569;
        Wed, 22 May 2024 06:49:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716385796; cv=none;
        d=google.com; s=arc-20160816;
        b=w+2+dHrO539wQa8J1mXG2Aj/nEoCYZfzp5P7IIz4wqMhUOILHEhJOCMY6SQCCmgAPs
         9G/APKNd4nlFIXNNsOxCpbdArAfDVpRLx9joJmOezgwiFVEHAw0dbas0m9l2N8ASiEg3
         s7PqezTB3n/MW1OJ+kglpAfy1vBWLilazTeoIsW7vvSSM/O0zOUmHUSobBaTZlR3iaG/
         YTeL/w1td8vrdcF5D/PHIrCyaGuHonNWufuLZdEUDm6LrizSPDWbvYJI/APnA8py1WVq
         R2yIRtpAd+wWx9/KDTforVEPJNrp35V5L0SByTxV9mBntOpvUWUZlPDB6b0P+lhUBUPG
         cuVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=gLF3/0y5hYfaL39gpSa0sZcibPQfrACx0584zK5GADY=;
        fh=Mjv0vai6ZW3HvWzvbypqgbQDkHARXsmXfG4RTFUNFCI=;
        b=0bAiVK8zFzkzpsrDP67rmy4H2NKzqaeYCZb4i38fj9vw0f8PT9EokoxsyIABEcSqdb
         eiWR1FmP2EfCUlJov1U88KMflCLKEtQNDs1WbtfQEYHGW9IKi0TnAl0ly8lspkHWELcz
         pQw98lqumStZKqgvT8tMGdyvVa3XSgvtmTQ3m2FMzIZXD+CdT8ACAS2M2TraRyxEXuBq
         0tgmu2J66lxf276aR3nBeKktoz5lgSlwQrWzBpDZ3sxywZri2QX8zprXN3mAODaSLDRQ
         7xTqvOdfjttw7mu04FgHGKETVDbATxr1IaezXpy8CffYCuLI/uoVoK+XgvYs/JOydq7q
         rauA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id d75a77b69052e-43df549ae6asi47615751cf.58.2024.05.22.06.49.56
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 22 May 2024 06:49:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 497823 invoked by uid 1000); 22 May 2024 09:49:55 -0400
Date: Wed, 22 May 2024 09:49:55 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Shichao Lai <phyhac@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org, syzkaller@googlegroups.com
Subject: [usb-storage] Re: divide error in alauda_transport
Message-ID: <b82e133a-62a3-4f23-9803-1af79b06b8f4@rowland.harvard.edu>
References: <CAEk6kZszgHVYN8r-AsPw9YtGGf459j0uDMYLdOoTixhE3YJCKw@mail.gmail.com>
 <2024052224-motion-perish-82cd@gregkh>
 <CAEk6kZt4qcV0xUxHFRp3DTdZ0f_3fLE0q4e_AWHGyjba=19g9g@mail.gmail.com>
 <CAEk6kZsgEJNSmFFe-tdA+RhM=+Pjm=JvHiNJ4QjZONPXHt-gjw@mail.gmail.com>
 <2024052242-hunter-exception-930c@gregkh>
 <CAEk6kZsLqJ5RbWYMrcbB+LkRq8jzRgTm3F8kq8FKB14y8ST2GQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAEk6kZsLqJ5RbWYMrcbB+LkRq8jzRgTm3F8kq8FKB14y8ST2GQ@mail.gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Wed, May 22, 2024 at 06:01:57PM +0800, Shichao Lai wrote:
> Thanks for your patience. I am a beginner and initially attempted to repo=
rt
> errors to the community.
> However, I have just discovered that the issue mentioned above has alread=
y
> been proposed in the previous three months of the article, and there is a=
n
> ongoing discussion.

To call the discussion "ongoing" is optimistic.  There hasn't been any=20
reply to my last post, which was made on March 17, more than two months=20
ago.

Maybe you can carry out the tests I described in that post.  That=20
would be a big help.

Alan Stern

> I think this post can be closed later.
>=20
> https://groups.google.com/g/syzkaller-bugs/c/m8CuxSpLKoQ/m/JfUy1xGnAwAJ
>=20
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> =E4=BA=8E2024=E5=B9=B45=
=E6=9C=8822=E6=97=A5=E5=91=A8=E4=B8=89 16:59=E5=86=99=E9=81=93=EF=BC=9A
>=20
> > On Wed, May 22, 2024 at 04:22:18PM +0800, Shichao Lai wrote:
> > > patch like this:
> > > ```c
> > > while (sectors > 0) {
> > >     if (!uzonesize) {
> > >         return USB_STOR_TRANSPORT_ERROR;
> > >     }
> > >     unsigned int zone =3D lba / uzonesize; /* integer division */
> > >     unsigned int lba_offset =3D lba - (zone * uzonesize);
> > >     unsigned int pages;
> > > ```
> >
> > Please submit this properly and we will be glad to review it.
> >
> > thanks,
> >
> > greg k-h
> >

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/b82e133a-62a3-4f23-9803-1af79b06b8f4=
%40rowland.harvard.edu.
