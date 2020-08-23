Return-Path: <usb-storage+bncBD6LRVPZ6YGRBAH2Q35AKGQEAVUNNFA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDF524EA9A
	for <lists+usb-storage@lfdr.de>; Sun, 23 Aug 2020 02:49:05 +0200 (CEST)
Received: by mail-il1-x146.google.com with SMTP id u13sf4059829ilc.3
        for <lists+usb-storage@lfdr.de>; Sat, 22 Aug 2020 17:49:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598143744; cv=pass;
        d=google.com; s=arc-20160816;
        b=dTOHEaetwxgLKmhGKJR7snxJ6pnhZ9Sr2u9Gm85ZOM/wgKSoGkS8uOAGEQsxCBU8l0
         C6SD/yZUPHXnAGdl6ImHZ22LjlmvYbWlG+vsv85pEoSSjsS85t8I1B8MhdTeCNUb76Ow
         6Tc/BmSx+/K3aZQdMJdbWcOsbjr/bKRNCJvu0O3i5jrr0q5F9M38nFXuFfNfQa1Ck8B8
         XH6bKRgtSgNL279sDnUs1pbgea3iEZweTaR9WndPgm7SxlrPgu25HOI8ekjkvfTvzGSW
         ECh98knkqUTJFDgAP7k7aHBjQfo1SxKlUEphRFDpjKSWYLGVWaZ/Z7IfvNyzwcdLwDJw
         j5Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Q7FtOeB4462tU+uoZXm2HVNVeMPUF9EsRY9x3SGZ4RQ=;
        b=AOH8NMEXHI5dvbNQ8a4AO30zQb26ABafxvaKAqneaijQ2+GpTvgVNw7NJw4Fw4YaMa
         kb18QC5kbskwymFFPUQFnvMZTfHCOlqGstGEyGxWkhpSsKXNxgPHqQxbvTQCJRIMAEpF
         UqVJbjQOwx4wd6Ka1HnVUAfqOV3yI9A9f2UsVxwsm9kdchoyHQBx4qbkyGPWqNlT3GGt
         XaLuVjgeI1KJISaAt8sVbwB7ZguN/k8wM1vb+C5KN0JA9OMwBHuLKvqm3MWWRjOR627M
         SL/C8a3t/mOlBd4D+4k1F8KqcsC8i/4BpmfZ70ziEL8FfDSsU4SDF4U69ORqhZUsgyA5
         zfSg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q7FtOeB4462tU+uoZXm2HVNVeMPUF9EsRY9x3SGZ4RQ=;
        b=e8Yw1kqkgu16x8Jbir6UIsHvu5MsoUw1FZXMqqfa1sGb62cZ5K0guHclFiMLaUBzYr
         ZYEGEQ4+lqY8V64ZH5q4PyGQhbhGD02S2yDWhiPnnleU3Wijycq2bIjcOIHAssU2Mijf
         RqYxZ4kBvp5MfJDdK+C5VMOLJqY0yuZd+toXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q7FtOeB4462tU+uoZXm2HVNVeMPUF9EsRY9x3SGZ4RQ=;
        b=lC976nT1jKzu3kPhjhztaHD5HJ/OEDbbirJsubFJdKjtr7mQX+Eenv1h+ip9DOFx7f
         9cy8yfxb2T1zvAQOWbW5epzPuhJTyZFWp+8rijJBA8zIqxb7TekQ0wZ5UAwpMAYyRE6W
         A3mYY/RuKhzPedNV4HvtryfD6Le+EEFPYBkhl1St8Y0YKLjo/4KP0o44EyMPv/fDNLWY
         4yYJR6i5CPdCug2hXz8lMJdoFqNyB5HVBAecdPuecFQxhuY9aeWROSuNh4KLkdKsf9YN
         uZNvkYHQ15sD0B5fdTw7ja4CfsSlfmTfwBWUJgvborq4gGCrfO1VVAL6n20hedaC3wsv
         6ZZg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532wkzAZfDmg4vDBKxNoxtP4YV8cgEENdmTR7/1N5ZLw2nTm/k+T
	Rz2lUFga5JZxHEjXNKpALIFAMQ==
X-Google-Smtp-Source: ABdhPJzuxgpCopI6+hEgJdeNzCi8qnuE2rF02EXT2gJSu/OvIPIw9Vf2D65t1cE7CEfe9lSzdGS/4w==
X-Received: by 2002:a92:d090:: with SMTP id h16mr45350ilh.132.1598143744486;
        Sat, 22 Aug 2020 17:49:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a02:7807:: with SMTP id p7ls748511jac.3.gmail; Sat, 22 Aug
 2020 17:49:04 -0700 (PDT)
X-Received: by 2002:a02:730b:: with SMTP id y11mr37837jab.126.1598143743929;
        Sat, 22 Aug 2020 17:49:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598143743; cv=none;
        d=google.com; s=arc-20160816;
        b=GC5m5No6lJv6MUVLGIJHkAbGRnW6dXT3/iLgbdQcI5Gv2cEWgOpHLBMEfhggFf5WNp
         e7BaBKkPUlwpjI987uH7PsJB6DBW+04QPeBvpht3qQwKSDJxrk7ycz/UZCHkcKVC0QUy
         SP/DtC+Pqd2n2UIyFVFoyJakVy1zSckOV8eYYqQ8hk/GkGxtCtBD4y1pCWUgqml2/cXh
         f4VbtXb1IPwUWpNpOmuIG9fkfM4opj9hHZdP78GCQ/KPP17KcFXSVnu0tSD4W+r1ebkm
         PJ6H0ijaIn5cb/X48prZ4JfS7wA8PT4HXtvjDu81VWfNOsFFhWlMgxdvu3y/7+jo5lQq
         VcPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=b/NoN2xPN+oCMQvN072HgsZ8oJoZ1Sf3G/dUMxZJqCA=;
        b=eLTFJfDOZfKZdHf9RFH5HelT6Rcgy+GHrBh/oRjzYHV3Ww+c6RjRUteex5tlQ4D6yV
         wVNvZpY19wNe2Ex181ZKP5z1XJuihrJ+3i3Efamscuk61npJbZu6YbmSiv5jujOCzYD3
         mkSBtCXhuatBuCceFJb+vIwpap+7N3+DBBnVLb/HDXGIskaCOWcuvVFDefG4bzoghcB9
         91xbB/1Y07GFxMKiKb+/m+PZu2x2U8Rf0m1C8JRKb4VXxgreZOik5DLAgyTCGsyiA4P2
         Bo9wRrBwBY7xNrtcsqfLdxh8JFsJ+xGCeHGKX4eVw14otLp1257OpuKrPSv/AN3Ir0xh
         122w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id e15si6788696iog.77.2020.08.22.17.49.03
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 22 Aug 2020 17:49:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 292705 invoked by uid 1000); 22 Aug 2020 20:49:03 -0400
Date: Sat, 22 Aug 2020 20:49:03 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: trix@redhat.com
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: initialize variable
Message-ID: <20200823004903.GB292576@rowland.harvard.edu>
References: <20200822211839.5117-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200822211839.5117-1-trix@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5f4942ce@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5f4942ce@netrider.rowland.org
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

On Sat, Aug 22, 2020 at 02:18:39PM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this representative problem
> 
> transport.c:495:15: warning: Assigned value is garbage or
>   undefined
>         length_left -= partial;
>                    ^  ~~~~~~~
> partial is set only when usb_stor_bulk_transfer_sglist()
> is successful.
> 
> So initialize to partial to 0.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/usb/storage/transport.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
> index 238a8088e17f..ce920851b1f2 100644
> --- a/drivers/usb/storage/transport.c
> +++ b/drivers/usb/storage/transport.c
> @@ -461,7 +461,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
>  int usb_stor_bulk_srb(struct us_data* us, unsigned int pipe,
>  		      struct scsi_cmnd* srb)
>  {
> -	unsigned int partial;
> +	unsigned int partial = 0;
>  	int result = usb_stor_bulk_transfer_sglist(us, pipe, scsi_sglist(srb),
>  				      scsi_sg_count(srb), scsi_bufflen(srb),
>  				      &partial);
> @@ -484,7 +484,7 @@ int usb_stor_bulk_transfer_sg(struct us_data* us, unsigned int pipe,
>  		void *buf, unsigned int length_left, int use_sg, int *residual)
>  {
>  	int result;
> -	unsigned int partial;
> +	unsigned int partial = 0;
>  
>  	/* are we scatter-gathering? */
>  	if (use_sg) {

Yes, this is a bug.  But the right way to fix it is to change 
usb_stor_bulk_transfer_sglist(): Make it store 0 to *act_len at the 
start.

That way you change only one localized piece of code, instead of 
changing multiple callers and leaving a possibility of more errors being 
added in the future.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200823004903.GB292576%40rowland.harvard.edu.
