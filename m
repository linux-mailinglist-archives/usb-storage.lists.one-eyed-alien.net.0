Return-Path: <usb-storage+bncBD6LRVPZ6YGRBPVIUKEAMGQE3BFS2QY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAAB3DE3AE
	for <lists+usb-storage@lfdr.de>; Tue,  3 Aug 2021 02:56:31 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id t9-20020a0562140c69b029033e8884d712sf8650580qvj.18
        for <lists+usb-storage@lfdr.de>; Mon, 02 Aug 2021 17:56:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627952190; cv=pass;
        d=google.com; s=arc-20160816;
        b=1FoLp5Kyv7cWX7aOC/kPCVjoEL34o15btVD2ZOAnaWgso4fCEUEUAvBOyVD4/U/RHK
         Y+cLyuA4mLslqMtpEmxyUsp6ZcKEHW0irIwE05kQ8LURWAc/KGcrB/G9XYB/fFt/jaEr
         E29gBjy8YHFBKQUeUsFDp208BeqchDblPCSx2df1jjoVVacHNiWaKWwhV4+C+J3FpKTl
         tOFHxEMe9TxMPeJyOO4nUfy2CsjnGyv0H/sFw18v7pOF7va53CWGLsYtBzBsNY5mqDJT
         8Pbw90jde5s80kgBB2idl/HuUX5DatEYkgDHi2cRF4qxSlz67zg5TaBxwlVhlDJXhwtP
         3nmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=B7TcRJyH0M3C4GbNd94yVhzkJw6Ie8ywzy26rsn3+9I=;
        b=XWQySXZ5RBxG2ZLGSdkVM+roxnHkTuSLfTCviyS4FNpwxa8RncSh8vuxnwNfW3iH1y
         2uMXiNpbliathGfFHyaYPG/UWihfwt4F3KhFAVxMm4z5bU1Rn+Vi+ukSBj3T3MOjiPuR
         g5XXD34I20KQ355QaxS4nWBNpVjwQyyFk7TPDV+Bixc/8vWABbseE8V/0sbrOQ7zGfsW
         ukAfRDtu7l6wEZ96k0tDdgXohG4o/kcdiHudGNXg6RaN05W22pf0kAkzsbGec8UB+uPR
         EUSmZeTPLgd2Rr2NGzD5+PfWCMg38m+eFrlTY6V7nptBlWF63siIT+3pvKpzVevZch3a
         hgpA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6109fa88@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6109fa88@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B7TcRJyH0M3C4GbNd94yVhzkJw6Ie8ywzy26rsn3+9I=;
        b=T35rgc7sp4lhFIOKZ7EwpIgTbb8EEIiwrUCnay4sU4FGxioVw7Dz2mbrqKN5WPgPw3
         uenTIKS3kFXMSVDsHP7OG7rITQZwWeQ1Ceptu7ePhTOMYQyvUJyWBvQWuxLPRAfl1jRX
         GM7+1i0Z79S91su5vgJkFFYPqPDVzeNPAZofc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B7TcRJyH0M3C4GbNd94yVhzkJw6Ie8ywzy26rsn3+9I=;
        b=TXGiFWhKMqFzvfXehYrlEwh0w0Y3PGIru7F1GfSeDgR2bbvoioS825+kwGorEnbHkQ
         kipasClADq62WhujW+BemeCLtPBMoNJyGqwYBb3HSzEUMkZfWu24jZvGY6S/A6qQgizp
         79NJjuas5uoeJ+bt25UjY8ocQy8xCpNJQpuIF8P/Dl+o8NalmZtE0etk4uH55SpnwhpT
         OQUBwxpt+h11hlh4unox2QE9I4kBTdHlBwKKJIY0WJ8biq/Ky6TVvFiJsirIzCXIWLfX
         VJ+W52zJnNpqjlrYLdZ8p2gXXFTYKL15g4jCZI+H2H0YjVTMKNHlqXkAy5r1vCjnUkph
         ijYg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530tyIAqqj6mBvRSYFX/FmJ3xwJO5MpYHVQjz6r4UQppr4MYuvo7
	xRpQ0flxwyYuSJSwWrzcOMeonA==
X-Google-Smtp-Source: ABdhPJzAnLP3gv/busyKMJBIcq5u4EzE9LhY+gwt2rXwoqaPX+l5LU07EP4httLf7uVma0xiVOBTOA==
X-Received: by 2002:a05:620a:90c:: with SMTP id v12mr18266937qkv.190.1627952190140;
        Mon, 02 Aug 2021 17:56:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:a24c:: with SMTP id l73ls10365000qke.6.gmail; Mon, 02
 Aug 2021 17:56:29 -0700 (PDT)
X-Received: by 2002:a05:620a:2291:: with SMTP id o17mr643945qkh.387.1627952189650;
        Mon, 02 Aug 2021 17:56:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627952189; cv=none;
        d=google.com; s=arc-20160816;
        b=P5tQvqLGOUhYPHvh/q76k/f78CoiTjXOFZSfzZYfgtxvsQ4YjhDvNQQNL4LwcR+SV/
         X1BdlK0H0lmJBy/My6/g5+1QnNAg0QKz6b+RL2GkEzgrwpbJk0j5pqxJkGNAEzsxTFP9
         finHOkE1edSaZ7bxWrZDfW58AkXcFsCBE0Mh8dbY189BkWdRZ1kbrMP/zZDo/o6e+0W/
         n87Sx36XKit42vHvHEMbIEKfCVdIm1OHLyvOLYS4Nx/amMdJ6iyIR7OByBgXQ0Kh06V0
         gFEnoVX0apteIj+KDUZCBgmUZXQI3iwpLGA6fjZCxJXJunn0A/vHq9NntUm4i8cF2uxa
         ciTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=cGncO0Cvb3vYPo8Zdg999560Asr8IFWGV6afJV+4FxE=;
        b=xzUEw8zmvZGxIio10EO+Fr8rlswNqQEVmbezW9bhD1X8OHGcUDfWpkCYRcYa2v8M6z
         924EBJncDnnKpnLng5Ixt32wFgtirdKu56OWie0MZxf4e89T66TTPt6OVDShx8Nj9bNk
         kETmDz5hwcYji6kdU21QKRkNqxCBVH+RsGh7jdxv1C5SuTFRYbhzO/NpWOnAqfJzmY0R
         dh05l4egx8I2rF6bppkVNIbhBZAs6UG9jsIFw5r/mudE0hruTY4Xeg4kynVhuuotkh+C
         I3bgqld6FIaCeZCATs/3RwKHfl0tN58Jh+bdEVEoxqCD3dwFN2vT1CeVMpbmnuIFjwhL
         XmCg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6109fa88@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6109fa88@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id f4si6401976qkh.357.2021.08.02.17.56.29
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 02 Aug 2021 17:56:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6109fa88@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 350279 invoked by uid 1000); 2 Aug 2021 20:56:28 -0400
Date: Mon, 2 Aug 2021 20:56:28 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Salah Triki <salah.triki@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: realtek_cr: get lock before
 calling usb_enable_autosuspend()
Message-ID: <20210803005628.GA349864@rowland.harvard.edu>
References: <20210802230313.GA1480457@pc>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210802230313.GA1480457@pc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6109fa88@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6109fa88@netrider.rowland.org
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

On Tue, Aug 03, 2021 at 12:03:13AM +0100, Salah Triki wrote:
> Based on the documentation of usb_enable_autosuspend(), the
> caller must hold udev's device lock.
> 
> Signed-off-by: Salah Triki <salah.triki@gmail.com>
> ---
>  drivers/usb/storage/realtek_cr.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index 3789698d9d3c..6948d6fdad39 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -918,9 +918,13 @@ static int realtek_cr_autosuspend_setup(struct us_data *us)
>  	timer_setup(&chip->rts51x_suspend_timer, rts51x_suspend_timer_fn, 0);
>  	fw5895_init(us);
>  
> +	usb_lock_device(us->pusb_dev);
> +
>  	/* enable autosuspend function of the usb device */
>  	usb_enable_autosuspend(us->pusb_dev);
>  
> +	usb_unlock_device(us->pusb_dev);
> +
>  	return 0;
>  }
>  #endif

I assume you didn't test this patch, because RTS51xx card readers aren't 
very common.  If you had tested it, you would have found that it causes 
the system to hang.

This is because when realtek_cr_autosuspend_setup runs, the driver 
already holds the device lock.  The route is a little circuitous:

	realtek_cr_probe is called with the lock held, like all
	probe routines.

	It calls usb_store_probe2, which calls 
	usb_stor_acquire_resources.  That routine calls 
	us->unusual_dev->initFunction.  For the realtek_cr driver, the 
	initFunction is set to init_realtek_cr (see unusual_realtek.h).

	init_realtek_cr calls realtek_cr_autosuspend_setup.

There is no other pathway to the usb_enable_autosuspend call.  So your 
patch is not needed.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210803005628.GA349864%40rowland.harvard.edu.
