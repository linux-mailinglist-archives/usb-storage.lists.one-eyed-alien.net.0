Return-Path: <usb-storage+bncBD64ZMV5YYBRBUF553CAMGQE5L42ERY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id C600DB239A9
	for <lists+usb-storage@lfdr.de>; Tue, 12 Aug 2025 22:06:41 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4af210c5cf3sf231925671cf.1
        for <lists+usb-storage@lfdr.de>; Tue, 12 Aug 2025 13:06:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755029201; cv=pass;
        d=google.com; s=arc-20240605;
        b=ScJl0PqCsqOhsKdfS5FL75w5Xl79bdbjhiOqRO6AZa+BUTMsT2Jb9wVuHdUihX8kXF
         igEXaRwpC204KBecKmfzh5nJQa4508FPdxkGUETZOcE5S1A8RuiROtpy0S0H04ezq+Sv
         0DQ97Ag14FnjLgKaly9VJP3WcCc4smTx1Motwq10skzj/pnkmy++1V532bHaNOdkqw7M
         ZILIB4Fb28QSwYFMLeOgOFDImkpDZJCqBf7pmc3DQ5t1EyEHPp+v4yXLdrfnLwsJYegS
         POH0grYfwG6lN8vrdmYusyFDc+aHrwoU0hGVvhebRtdYqveZi9BwoYcMkLIu/NgFHPb3
         kQaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=A8tJK9qjH0hSSfP4sSHTFJabHPAzpmc/TDOnCFYjWeI=;
        fh=KWVefqPdRxf91OjFWAvhU/3Ss+9uTNNDVs6bjDAgZ8w=;
        b=UFkuBw/+RJgkbLuAJAuPzqGsEwXJNFfXlxLSSYcOJHX3hGatXgb3aeD12Wlt9e2x9U
         OCtXLn07mZ/rDxPtNN12Gh/jhmdSlLennOUdi4ilyHYquNAfOvRUILXt7gKjIVFzLRvl
         7aimWu19lhtNfMdp1ucmq1Xx1hUIKGnJ8BaW7tXgSvhV9Cu6KN8Z584Uxx7cOfX1K9xd
         7ZvIrlJPupkFuqDycf/phyzvc7UcBWQ6HQPCihYLVIBzAkhY0ZTojaOzAeKImWZ+xs7g
         tT0TXUM+hwHrfamibEGFwUFHuXZ4MDz91CyozhFd/VR1qdBgAUEJLS02zClSC3OAftR8
         l+yg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b="SpFvs/LI";
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755029200; x=1755634000; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A8tJK9qjH0hSSfP4sSHTFJabHPAzpmc/TDOnCFYjWeI=;
        b=OMociHM364E4OqDkcNFomulrg7uFyZF//i6vsvkt7PjVYbO7g8dCojRJJCErWz3Z5Y
         Ua25jJEWXEVIoB+6G7+Nq5P9Sy20iV7m16BXewk1Vq5OzcSlyIz6YIbxLzJoU2yLtN50
         XUwvNDCCcw/cZHris+vjtxupzVnI8w/d71ewE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755029200; x=1755634000;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A8tJK9qjH0hSSfP4sSHTFJabHPAzpmc/TDOnCFYjWeI=;
        b=EYwnwNH0LrEyadUD/AXqCOZVBqpY9zL8jNV6K+7K/8Uj0V6oyXWuTY3ey6AnIToM81
         qCLK+hH74C0GPVkBR+kTA3A5HCSrjA7Ut7g8XRIGC5lETLCrIXJJQiOpappajyLokKA8
         SF0Jr5OXmRRb3y5YF4dfIAYTZilLOl/ZAMg9J6ik4dgFuCvmqe417LczMTj24h9kCgnZ
         +FglSS657vY7Nbvi+IKaj3h2xxQXH9c76PQALe3NiXImlYlcaJebeygzCNQKmiH/n9ua
         Z0+GNiunmdaYtF40UqyBYJp6JPB2vlLmn71uCp0g+yTfjHsvSbAuixkuoVr2AgrCWZhb
         CZYg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWRkiCaLbRUnOVZp2COY22fF0UYhaZjYW3R+wFl1jpx7Sl+WknO/QW87kEeVuFBbx37S/m8NA==@lfdr.de
X-Gm-Message-State: AOJu0YxWaKDY6ydo/7E/yh+eaa6N7Z/0vw4StAtQcr84uVXFhzqN3Q61
	QK8NitRGhePeqdYLxzCUauGneboH2eEhr5F5LAyXxHUVXMx7bgz172dSJjYOylhfYrc=
X-Google-Smtp-Source: AGHT+IH148sYWU7M3LRMIsUU46kTcbGVLnpZ4Gv/Dirx8Gzz+MIXkySDWVyJc7hwHBuzzRRuYdvw5w==
X-Received: by 2002:a05:622a:5c99:b0:4b0:8845:5669 with SMTP id d75a77b69052e-4b0fc7b2a3emr4885061cf.30.1755029200519;
        Tue, 12 Aug 2025 13:06:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcZtNmK8E6PReAAo+N/fR/a+6F3uc2nRjTatD+QI8Ckaw==
Received: by 2002:a05:622a:508:b0:4b0:9e11:a24b with SMTP id
 d75a77b69052e-4b0a03a3902ls96980241cf.0.-pod-prod-06-us; Tue, 12 Aug 2025
 13:06:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUi+P9tGTj86BJe5eabohKVLfyNgxN5nVgMP3RSetbN97aLPFnUHE9pPOy5ShWb5/GBJTPp0iuRUwInFA==@lists.one-eyed-alien.net
X-Received: by 2002:ae9:e70a:0:b0:7e8:2128:107a with SMTP id af79cd13be357-7e8653672e9mr64359285a.64.1755029199185;
        Tue, 12 Aug 2025 13:06:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755029199; cv=none;
        d=google.com; s=arc-20240605;
        b=GJ23ZPH3pM6CTCJo+WQ7VDKDOqWPHbZ/Cx6jqfobpsIb62MTvUsG97bxSlFyuV1GVM
         YAmdPqpycuMUpeAR8xd3HyY93FlzedUnPHWJcdu4XcZW88yl08LgQuzL79n5bTkhnB9O
         Hb2GwF2sT/AIIkq8TAtAlN5yhBGrn4JKC8pXFo+3t4xrqA8xe8dnky1P6rB8YhflK1pk
         kMpXE1Vj+ejUjZfbSzXBlK/WWle13TsvC6aF31ipOYF0uI/WD6sX4e2QfuWS1JGhHSBa
         lkWi5Pph5qcyqdRYS3vWMzCJAUB6xNavSaGChfx/QsFJbFVUlG86VdO6xEjqq/nr4NmU
         1aTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eqkiQnb+v+DV7bwshJvcuqOvg6eI6sY8lksQaVEmngk=;
        fh=TlFV52BTiY221VP+r7OWRWaLGJxXGaHgriNUKE/ZqYc=;
        b=abN80UXf4EDP9+N7IGqeoqXulAr9zT3Bk93f6uuTuVkI1IYHV4tv+q1qz1rivOqRLz
         9p1VVplkLnIyisMf379X78h9Cqgwsnqru1sJEgWejCIyp51KqMHUgIC8glE7F45UIFLC
         RnkubNu4y4VeEAsG9c9CRg1Dc7vJyP+30m9Nj1nGEzjoKi+Q1V1mu/1DiIYfG6QyEfaS
         rZlQ7HbUwlsZhpcNq7p4sYn7SAusd8+hduU2ZXlTVtWJ8Ej0YhASCNFmD3eyEPF9Zh78
         jT9JJdeAPb9ZIIPu2/IbRZaIZSokKcEyBBRJku3TL9t7UGQ4XOWWLW4+A5LzyOkQRTgB
         Rorw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b="SpFvs/LI";
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7e68abf122fsor2941050585a.0.2025.08.12.13.06.39
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 12 Aug 2025 13:06:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVIOun8CkRmA8jarUliPpmmCuT98Q8atYx6jTZ1BjW+35vcdmnwP3B7d1V0POrNdFaAm18ipozi+BXLXg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncv5bTgJPs71QzYdln4RsMc69dBQM2argvNtmVrCJ4vhR69yG3qGGEWJn3NwLTZ
	9LtxCDSujDmJYzwU+blw+tqu78rRlt/H0ragWFaByagybFT8Nij5cjwd2eIq1Qr1CfbT/USY4St
	0aPFvC0uoH5Dw8d8m6vz9liKDdUTsyOgDAYDUcMHXJnCA3AtdEk9WlTpa97aqTPwkaNXzhY0Cfu
	0aZ6cQJOBL5yA9najI/kMp+4mcWIHaYrMxdBP3EUdBORbpX9mpS7AfsTmtkdu/VqnCw9mxGzYUi
	e4tnAowGvHWpqL7OgmPzHg7OFYWfzFon9R9a69p0FJPQvIQyYRs5ZGe0og5qG6gSVj4ZDuoxwGF
	EnYbhVxRc9bML8ir/Ivcxw80=
X-Received: by 2002:a05:6214:29e6:b0:707:51a6:184f with SMTP id 6a1803df08f44-709e89fd871mr5029606d6.48.1755029198601;
        Tue, 12 Aug 2025 13:06:38 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::e316])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7077ca363fesm179978606d6.31.2025.08.12.13.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 13:06:38 -0700 (PDT)
Date: Tue, 12 Aug 2025 16:06:35 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Thorsten Blum <thorsten.blum@linux.dev>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: realtek_cr: Simplify rts51x_bulk_transport()
Message-ID: <b11a19b6-9fb3-4fdc-b94e-33ff01a634b3@rowland.harvard.edu>
References: <20250812144358.122154-1-thorsten.blum@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250812144358.122154-1-thorsten.blum@linux.dev>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b="SpFvs/LI";
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Tue, Aug 12, 2025 at 04:43:58PM +0200, Thorsten Blum wrote:
> Change the function parameter 'buf_len' from 'int' to 'unsigned int' and
> only update the local variable 'residue' if needed.
> 
> Update the rts51x_read_status() function signature accordingly.

That last part isn't really necessary, is it?  It doesn't make the code 
any clearer, less buggy, or quicker to execute.

> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
> ---
>  drivers/usb/storage/realtek_cr.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index 7dea28c2b8ee..8a4d7c0f2662 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -199,7 +199,8 @@ static const struct us_unusual_dev realtek_cr_unusual_dev_list[] = {
>  #undef UNUSUAL_DEV
>  
>  static int rts51x_bulk_transport(struct us_data *us, u8 lun,
> -				 u8 *cmd, int cmd_len, u8 *buf, int buf_len,
> +				 u8 *cmd, int cmd_len, u8 *buf,
> +				 unsigned int buf_len,
>  				 enum dma_data_direction dir, int *act_len)
>  {
>  	struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *)us->iobuf;
> @@ -260,8 +261,8 @@ static int rts51x_bulk_transport(struct us_data *us, u8 lun,
>  	 * try to compute the actual residue, based on how much data
>  	 * was really transferred and what the device tells us
>  	 */
> -	if (residue)
> -		residue = residue < buf_len ? residue : buf_len;
> +	if (residue > buf_len)
> +		residue = buf_len;

This really has nothing at all to do with whether buf_len is a signed 
quantity -- it should never be negative.  (And I have no idea why the 
original code includes that test for residue being nonzero.)

Much more serious is something you didn't change: Just above these lines 
it says:

	residue = bcs->Residue;

It should say:

	residue = le32_to_cpu(bcs->Residue);

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b11a19b6-9fb3-4fdc-b94e-33ff01a634b3%40rowland.harvard.edu.
