Return-Path: <usb-storage+bncBCUJ7YGL3QFBBNHXRWXQMGQEMYBUXNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEFA86F217
	for <lists+usb-storage@lfdr.de>; Sat,  2 Mar 2024 20:19:18 +0100 (CET)
Received: by mail-pg1-x548.google.com with SMTP id 41be03b00d2f7-5cfccde4a54sf1098009a12.1
        for <lists+usb-storage@lfdr.de>; Sat, 02 Mar 2024 11:19:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709407156; cv=pass;
        d=google.com; s=arc-20160816;
        b=l6pgljCSpQBgG7Tt+6fSmKGXkJoZcIC2VdsiK9/EG+2ZHATu+U7sDOOf+6QTd3FfR6
         +cxE0tE/qm0xTeKk/Lsm2JFaYMIfsaBoJ44iDdcAH7CFEis5DANAjTzLDDifHH8SFvKH
         i4UjuYznCtXt9NgUaTCgR5YIXrxnQDOrmhwSvr9YsXWRNnE+KH5Ntpm9LayRwFgYrOO8
         Ntz/t1w3OqcYn5WVoNpsq0yeOpWdEAoDUmgbcaALaVTCgCLGszXBbaSz+IeSz5AvKDJK
         lZfiIRZK594tacphfUi03jXsGOW7rIbAiN14oW9lSXC7si6TKr7tzkiq4MW1yEK/oL19
         I3BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=n6QcVc43FpcOgtjwkhxcaZsQczSEKOWCmo11N4zIjjs=;
        fh=W36zlWnBzFoEVb8hkbCsTlafuNb6jyzJMpsd9B/B0oI=;
        b=jVzc25nQG3+A47M871w+Jrk1zRdZWheeZVPs8qTw148msZRBNosiEOwQSnL8tmIxb7
         M8z46fpReokZUtqIEepVeKlZRB2Q8WOhXBzsQ3njFWT6DNbx4RXuJkI+a/2p2HGaeiYJ
         Dq82Dt9vp7SW1ms8tAgV/IC/5J0W/TlLJ7QEF0UPQQRyDIMPMBiUE4MuHy1xQ+GCZRc2
         OFhWh+2uoSrPUYjXdVICsWYCrRvaUSIofBQgNhicmJdZ5OtHnDCpog8u8qA2NM5d0bcT
         KRK976cxUJfrJ7YLH71vXLljTfNuFUO8fCXG08YUw1E7Bf8iFj/kNnZTR/1gw+xOS9Nc
         0tIA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Y3dE4PCK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709407156; x=1710011956; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n6QcVc43FpcOgtjwkhxcaZsQczSEKOWCmo11N4zIjjs=;
        b=AIzMHgf/q//2Pbf/3g26g1NXsVm3+UeqbGas9NOU+ivwIOlXmm7GwRJgTwbGoQf3pe
         j2gNoMUJxrQsH0U6XD0qzEKWIREzZq8tPCY5QiPiW2nc1wC/a3OvoEtJpJHA1EFp7JKV
         jBlYcdixOUP9Nx+bOEFWPlcET6P2johCxGOUA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709407156; x=1710011956;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n6QcVc43FpcOgtjwkhxcaZsQczSEKOWCmo11N4zIjjs=;
        b=apQYni1JJBCF0rjJ+CWpHs3y+clwNEMDG2mgGbD29miVOSUC+dKWtAr2qvgTJn4RcG
         vC8ufHZK8cBVEw0uzrcYhJNd9VL0l3z5fA6h0LugOY/1U2q1g+20H6BKhMaZOe8i0mli
         I6TAgCg7HnCxkCCALulHx2U6aW278E3Gy5zvfqCF3lYFXPlEofEweW8SW/kQenaq5LVn
         Y0NjRyGF7ff4peYJvFsAxUf4NRziEPSZdw2F/0OSMPUVUzKEyA9eiM8riu7NB4nwc6XD
         yIqgXE3KJfbEiE/BO4bQQRP7HAx70z3G3UIo3aLpJl8LP16FFppKbWoDWukTDF4P3sdC
         Fe3A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUIQxh5JmOrcHihRsLsexnJt1s4bhhYPT649YM+J4gMmKzDs5mdvTrNWlQqi+mrFeXR5E2EzwbqxenXBXe9bk4Hc9zZm+EL4ntS
X-Gm-Message-State: AOJu0YxdYIgwDpVZl5R1X6xQFl/uA94zLl+ec6mSB9b/U9iAMfbcm4Vn
	sN38WL0lnKpWl6RUJeyF7ZQR1AA43/LpOZqR69dYfARUIfmqaDspcI8PRrB+4LQ=
X-Google-Smtp-Source: AGHT+IHr0dq19b3FHr3bX3kHkY7FmiqjG9TJ8w4v2mKsab4LMP35jWKrxQGn+lUXKUvL/1pRtZf64g==
X-Received: by 2002:a05:6a00:27a0:b0:6e4:8dda:691 with SMTP id bd32-20020a056a0027a000b006e48dda0691mr6448403pfb.3.1709407156328;
        Sat, 02 Mar 2024 11:19:16 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:148f:b0:6e5:a911:a5b0 with SMTP id
 v15-20020a056a00148f00b006e5a911a5b0ls1501266pfu.0.-pod-prod-08-us; Sat, 02
 Mar 2024 11:19:15 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVzUPwVGafNNMVri47ct4Qpo112x2IaO0NQCrnOm1QMhu2chA2Xy/7uIjT4rnbkvDqtt6MGTBkpQ5+Z6VbLpnnE8Tl5NHPjnZIec/tp3LUQHZbtzU8=
X-Received: by 2002:a05:6a00:c91:b0:6e5:7be5:79f8 with SMTP id a17-20020a056a000c9100b006e57be579f8mr6408031pfv.5.1709407155189;
        Sat, 02 Mar 2024 11:19:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709407155; cv=none;
        d=google.com; s=arc-20160816;
        b=cFPD/NJkxBRASzDazWPZJ0ZxjWbIbgbo/9j4D78JHjjOVQ1tIywtBSJoSMVe2YxBEg
         LnRjGmhqJ06QVpaA3aLNWMGslDcuUxWBFBHSdE6VazuLikDB7+0MmOionqNrf09w1Cht
         iA2873tSbPGietRBL2Kx8Quv0Wt3jW+fN4SUDwUMAQnXttGsdx+6++dJHQr+1PfrZQBB
         BEmSK7LU1Iefgr7/j8tWAv+gp0MSFyHtQCGKvs78V3bGURrq87UOec1iM6yEbb6jjid4
         FlKqO/aTV1K05qsduG56ZsDIIhV+yiC92ia5FgkNXwShfdmpQhMZFAlkuM49bbhd/ELn
         sf/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UGF5Q3hpqSP/39z9fuQE4REDnulqch+2VlKOObb2SDw=;
        fh=if7eWVks49TVXNgdt49cxbMoMsRl3m/9eNJKw4lBwzo=;
        b=M4vV0EZXWv62yHGrqhJTMB+jX4geOCQjsCVMvNdcg3BlFQvi558eqKWZ4xxCi8GAp0
         wCC85D/ZVTNhjXlQhlGrOna8jVTbCOJf7KzrsovJavaXlKcLexKwMYJwzQxXYpLEUXYo
         6YYWEk4MG/gVqP0l+FLYrziDktnZz6/I7gkBSnPFtzJxdnGuPhF1X/eGzDhBJtIPyi3+
         dNFtGa+4COW0dGEPYjmNHOJu4Qf5hVWuivMfgWL5jru67JghoDf2oysiGqypPSGrq+C3
         oDhhyMuWQlKY1fGtX9SoQ2UWg8lBo3u88PHkNJUhh92AJ/TbNzeqLX17hT1DMbXEXon7
         jnSw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Y3dE4PCK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id 135-20020a63028d000000b005dc4da21221si5743290pgc.419.2024.03.02.11.19.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Mar 2024 11:19:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CFE2FCE0C06;
	Sat,  2 Mar 2024 19:19:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2B7FC433C7;
	Sat,  2 Mar 2024 19:19:12 +0000 (UTC)
Date: Sat, 2 Mar 2024 20:19:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lars Melin <larsm17@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, Tom Hu <huxiaoying@kylinos.cn>,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] usb-storage: Add Brain USB3-FW to IGNORE_UAS
Message-ID: <2024030221-tilt-remission-7d7a@gregkh>
References: <20240226075936.1744353-1-huxiaoying@kylinos.cn>
 <a960f1c2-a858-498e-a0cf-4c15d74487d5@rowland.harvard.edu>
 <960d9120-47b3-4961-9ce7-cd9e8b760220@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <960d9120-47b3-4961-9ce7-cd9e8b760220@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Y3dE4PCK;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Mar 02, 2024 at 07:06:20PM +0700, Lars Melin wrote:
> On 2024-03-01 23:53, Alan Stern wrote:
> > >   drivers/usb/storage/unusual_uas.h | 7 +++++++
> > >   1 file changed, 7 insertions(+)
> > > 
> > > diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> > > index 1f8c9b16a0fb..98b7ff2c76ba 100644
> > > --- a/drivers/usb/storage/unusual_uas.h
> > > +++ b/drivers/usb/storage/unusual_uas.h
> > > @@ -83,6 +83,13 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
> > >   		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> > >   		US_FL_NO_REPORT_LUNS),
> > > +/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
> > > +UNUSUAL_DEV(0x1234, 0x1234, 0x0000, 0x9999,
> > 
> > The vendor and product ID values have a suspicious look, but they appear
> > to be genuine.
> 
> Hi Alan,
> it is of course a bogus Id, here is another one:
> 
> "SmartWi - Multi Room Solution is a Smart Card Reader hardware device. This
> driver was developed by SmartWi International A/S. The hardware id of this
> driver is USB/VID_1234&PID_1234."
> 
> found by googling vid_1234&pid_1234.
> 
> There are others like 1234:5678 which also looks suspicious.

Yeah, this is a "fake" number, which happens a lot (0000/0000 is also
used.)

Because of this, I don't know if we should take this change.  It
obviously fixes an issue for _this_ device, but for any other
usb-storage device using this fake id, will it cause issues?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024030221-tilt-remission-7d7a%40gregkh.
