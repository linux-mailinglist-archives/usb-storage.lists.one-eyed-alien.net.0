Return-Path: <usb-storage+bncBD6LRVPZ6YGRBYFIV2HAMGQEDDX5N7I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8C7480DCB
	for <lists+usb-storage@lfdr.de>; Tue, 28 Dec 2021 23:49:06 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id r13-20020a0562140c4d00b004119074a4d9sf12781314qvj.12
        for <lists+usb-storage@lfdr.de>; Tue, 28 Dec 2021 14:49:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640731745; cv=pass;
        d=google.com; s=arc-20160816;
        b=j31gGwu/u3kkenRAmndybDak5y+7Uv4KmMhtvYtFZ10RvUG65QNR1mDMtjmcUFVQmy
         QKvAeBgcoRGDBhzTPmgEKT072CXfIJRiUqlaS82XQMTSR4opUmpvq3K+h9dbEDkN73fR
         t6NUBGPYx9d8pXvjM/ffDFydg7uFX+JD3GBvlm6tYg5G6dkoTmYhxzdY8eD0dVeaeTrp
         e2yeffMkpKxJcyDrjCOhMqKhIFzEKx6uGsj5Q7t/WUyRLJ/lfhwpMNmWAGN5LhPpPlvE
         f1QuNUcxxNnvmIdUgKW3HEbiE6744ZzWsmIDrSC3X6xUNQXXPBfoWokZiCG80eDp/i8H
         q4Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=h9TD1DRwUtk3wykc48AMEVVv9amh5KA48cwOvS5S9Es=;
        b=aC4E8XMbic2U2SZBkjZ2CD2GCTkA43Bw05g57KCVkYJ8maWnBTg07FlykQ4DH1MEVx
         recOmiNU+leiqvtVrql0RSGLVIwOGkE2DCh5wakDbDIU02sDE4LwNqkJ8UGAQwLILno/
         5VpqPufQ4pnA1frwnj11mfwGTiN1llWCRRhKVVIcmYB7Tg6IgUngONv89JXnXYn2f+Ym
         FfeozBhJhmdi/MDfjFxfwsKkJvCt9DBeQE/wUzscS2w3IUYE/7QwAUeiyreNcWCxgncf
         V9WHTDIfzi4x4wwd21KHNHdc9d7+ZAT96rKcOxxDffa4fe2gzkXRY0yJuOxqxYu7BtrP
         eImA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+61c4c1a2@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h9TD1DRwUtk3wykc48AMEVVv9amh5KA48cwOvS5S9Es=;
        b=XCJ3fUHBekklomdtCT1t0+ycDcjXGMc7HGhm/HoYaqX3v6Jc0XPrGOjnX/JlLfQDg9
         KjO9yPKvGcqJFxnzSj4/0kM/BCO69bYMZff9bXT0yw/oi1BW99/vcNLaeTt1JMgqzqjG
         dqvdu4s9ci8TTf5fmQcRKb8Vp922gFVtprPyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h9TD1DRwUtk3wykc48AMEVVv9amh5KA48cwOvS5S9Es=;
        b=sz5I4Ibih5iom0Vx7pz7yD33ywVClhVvuiosGFT/GrMio6ygoTy00aIuV9oYapvQ7J
         qDqXjx7u0fhj7MNLhYwm20YtAfTUTs/iKNfuvHB9oXcPgTOOsP14JzUOBcxDoS4ZDAet
         rO40vohthrnV0KryW8tHA/8EB0R7RhfRVwfQ1kdjijzSnH+0Q6wiIm19MZrOFGoASrTC
         BzFkil2uotnrnDMSS5iDC779X5vSqBrEqSIE1d2DclVcDTVmnJq1hXmDZS4SvdrSN/F6
         DseAnYCNkuo90M61z4Zflx3OjsqqOMhtrpndkS0CgFSsDPrpIPtrpN4MJK7HyoyeXg85
         mRWw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533FOQAXIvLuhzFP9pSVw7dWUNwElNLCelpqjcWx/ZPwYbKJ4NTD
	hsaqL9kNlp3JuF9RRrOTwVhm5Q==
X-Google-Smtp-Source: ABdhPJyrqrGuse2PUsA0pRLT4FsKcmorVRvFCPMY1/e1F3/wtRKfL9mMHCxGbHCezFWAupQoLvsdWg==
X-Received: by 2002:ad4:5f4b:: with SMTP id p11mr20955496qvg.24.1640731744922;
        Tue, 28 Dec 2021 14:49:04 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:b3cf:: with SMTP id b15ls8439275qvf.1.gmail; Tue, 28 Dec
 2021 14:49:04 -0800 (PST)
X-Received: by 2002:a05:6214:529e:: with SMTP id kj30mr21512499qvb.117.1640731744341;
        Tue, 28 Dec 2021 14:49:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640731744; cv=none;
        d=google.com; s=arc-20160816;
        b=qk0F1udZS9o5W4FohE72//sJcP+THrvbN/uxjHszmQKV1ul7uNHxKoAdalV5tAVV5X
         AtDfsgd/FBURLUVMVMvWkJXQy+ySVPCOKecNdo5SliPeBHg/xlDqI+EBJvlycJHNQpyo
         BqXNXtn/p0gnnZVUDBBifEVvgvJe8t+Na4EldRbNZ6It7/wO1dBdHSW3YMFrOMx8gV7V
         /hSp65pCGJpez2DtkGXahpeO9ojc7Lqy/ELVeU5ZIGxvnwPFyir+w/lQsGR8m8sWMzzy
         cer1dltOcU6rfWdgNOrkPjDPAMcfK1Y8TtE9TNpC8s4cqqNyUvQrp1VYvqS739TzKZjH
         rFTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=hAP2bQshEG2cfVIP2iBikfCydcJbr1tAx7JWTy+buRg=;
        b=GlG2BhOc3zTMUfwzd/S7W3HEJ/VMwZZrhpV+MepQFUoyuolPIbcSdy3XVNXbVf4vk7
         0i1biuKkFQQSvK3ozWVELYOE/q6AQukUs55PptV/vBgoC20n+GmiwanWspEGkwk+ExAN
         M8F2cySYIzzvbwfs6OPRA8eEnFo9CgXHiGEw/pgK3biN/jJI7RrAhiqZlPWzYpUmrT58
         Jl2s4TPkTRL2Kb7T+/eyQI+JOzr+hmDEWHxmX/dhYHr9a22Ikj/pCI/gOa0c7pRW0JH2
         Y12Gvg3vnHxv8hsu6TJHDQhA01lfOlNpGrco9t1HrTZMyk2VdbtKHdYY1OGOb+QERwHT
         rRRQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+61c4c1a2@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id f3si8286149qte.427.2021.12.28.14.49.04
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 28 Dec 2021 14:49:04 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 1083515 invoked by uid 1000); 28 Dec 2021 17:49:03 -0500
Date: Tue, 28 Dec 2021 17:49:03 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com, glider@google.com,
  gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
  linux-usb@vger.kernel.org, syzkaller-bugs@googlegroups.com,
  usb-storage@lists.one-eyed-alien.net,
  Kernel Janitors <kernel-janitors@vger.kernel.org>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
Message-ID: <YcuUX6BVo+HA1TcI@rowland.harvard.edu>
References: <0000000000007d25ff059457342d@google.com>
 <f78b974a-e36b-6d23-6977-fdf50c05600b@wanadoo.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f78b974a-e36b-6d23-6977-fdf50c05600b@wanadoo.fr>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+61c4c1a2@netrider.rowland.org
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

On Tue, Dec 28, 2021 at 08:47:15AM +0100, Christophe JAILLET wrote:
> Hi,
> 
> (2nd try - text only format - sorry for the noise)
> 
> 
> first try to use syzbot. I hope I do it right.
> Discussion about the syz report can be found at
> https://lore.kernel.org/linux-kernel/0000000000007d25ff059457342d@google.com/
> 
> This patch only test if alauda_get_media_status() (and its embedded
> usb_stor_ctrl_transfer()) before using the data.
> In case of error, it returns USB_STOR_TRANSPORT_ERROR as done elsewhere.
> 
> #syz test: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> master
> 
> CJ
> 

> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 20b857e97e60..6c486d964911 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -318,7 +318,8 @@ static int alauda_get_media_status(struct us_data *us, unsigned char *data)
>  	rc = usb_stor_ctrl_transfer(us, us->recv_ctrl_pipe,
>  		command, 0xc0, 0, 1, data, 2);
>  
> -	usb_stor_dbg(us, "Media status %02X %02X\n", data[0], data[1]);
> +	if (rc == USB_STOR_XFER_GOOD)
> +		usb_stor_dbg(us, "Media status %02X %02X\n", data[0], data[1]);

Instead of adding this test, you could initialize data[0] and data[1] 
to zero before the call to usb_stor_ctrl_transfer.

>  
>  	return rc;
>  }
> @@ -453,8 +454,11 @@ static int alauda_check_media(struct us_data *us)
>  {
>  	struct alauda_info *info = (struct alauda_info *) us->extra;
>  	unsigned char status[2];
> +	int rc;
>  
> -	alauda_get_media_status(us, status);
> +	rc = alauda_get_media_status(us, status);
> +	if (rc != USB_STOR_TRANSPORT_GOOD)
> +		return USB_STOR_TRANSPORT_ERROR;
>  
>  	/* Check for no media or door open */
>  	if ((status[0] & 0x80) || ((status[0] & 0x1F) == 0x10)

In general this looks fine.  Let us know when you are ready to submit 
the patch.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YcuUX6BVo%2BHA1TcI%40rowland.harvard.edu.
