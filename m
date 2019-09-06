Return-Path: <usb-storage+bncBCUJ7YGL3QFBBH53ZHVQKGQECBW6YPI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D609AB929
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 15:22:41 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id k20sf3333320pgg.15
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 06:22:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567776159; cv=pass;
        d=google.com; s=arc-20160816;
        b=zLNfQ5L0tM7FlidnAG85nYYP+AvKpm+ihw/si1XdBKexn4xlKm2YFkN+YXjJTYjXww
         BmfU8+KArnYngUSXOATvolFGUMcKVsZhw2bHqQ/Hx+K9vPQkQr4NXnCF/kPdWcFiTT+p
         4Bl5MkcTtCDIIk3DavAnJQGfnxgx87zJTTDhBWmtFeaC7bAyvv+f/6jKEntq49WAaaw+
         gbHmdoIqYSI1z7kC/0aL68QvSgVmMm/1yCoZy+buFtE/wUskwNomPnA7vfgk6XzyjJ1S
         iofFB+Yo0Tg8TzTCScBDM1KJaG+Pq1i254Tz8YbNovXxkvHKy5xvvn1LlpWskIjJtDSX
         Islw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5Hqj0O5N93Itbd0tAEguSk7jF3MZ+OtV0zUmsF6kTsc=;
        b=nH8GA56N0+Iwrw/NhH6LLicMi3N135/ziOHFuNkDoL/g5KQmLW6SqPRpDnPYo+ZD0Y
         kh2Vw5w1jbrDnqh1aeziLzBfUX++K9wVtqp/18efkpyUCOq692YswK6/JDreSRJKKPkA
         KWu54O7bIMFxdN5RW+BBUNhXpm4qJyUQCEs+G3KP5Sz3xpV/K51GiRrRMfQSl9cB4rp1
         2cS+Hs4+CqzKtUVefJsdvCHuoTlpfGugVm1Sg/cimW3nJuV5nPwm1uyx2xFdUT/A6ya4
         heOMB+mhysQW7nwaE4Z8jYFoQXFQnUnu2MBidrqiOnerm3UtKT+Tae/1QOdSs0pWR/F7
         0fvg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gdhwqgHz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Hqj0O5N93Itbd0tAEguSk7jF3MZ+OtV0zUmsF6kTsc=;
        b=XbCV7qeKGjVcmJ4K0RMEEqtmzCt7ovyOWlCwseiphzcRYN/AQEL8LPU+NsOdCyY1TQ
         YLE4d2BYIGFo+0ou6aOFt/AbuoXYs8djkmrWF0s3jCsYctn+ExZ7tbeaJk5TuTG6ML2+
         AJY1a1EG4Lti5qQ6XMq98fffBNg2gpSq+PliI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5Hqj0O5N93Itbd0tAEguSk7jF3MZ+OtV0zUmsF6kTsc=;
        b=skZRQckRTvCBECR20eBExZ/5EwS50/0v8Ne433UC/gTzOK90GHhKMjumGx2u5pYnFa
         vyxlfQZhspYdPXkS0/h2jAZdQee6+/U1UjBvxTLa42mVFLfsLjdJARKG3XcbgmpKs276
         RQAAiR/7s7d4T5+6l2ectutpHn3emoCFMrhzvZ2SJOs2NeKTlXxEmzMvTq6N9pddmde9
         mWLFMkMTlpL7KDu7skJOnIlsfnb3O7Y0yo24grKIMxnU0SiHWrdBer5WMrgcUpq0ZpDw
         lhMwazDRCrhx7sjidsDYjUbd2fFwq3ST9FDLwOaTj3WAXzJ8sPcJQWQhXenMfZ46ePR+
         U+wA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWRyS9OvfIER0roONCtOMoyRF6JU0urVOIYC3KBpjwJgZesSTnL
	azyMj+KtH1yRILxIMHHhgQSP4Q==
X-Google-Smtp-Source: APXvYqzPsRwybYFxHPhGyqmmqS/64Y2N56f6sBj6neOeqD80ZMFX2/aYXCT/xcR4TdGGM7JXMDI8pw==
X-Received: by 2002:a65:6288:: with SMTP id f8mr7765611pgv.292.1567776159650;
        Fri, 06 Sep 2019 06:22:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:628c:: with SMTP id d12ls1497255pjj.3.gmail; Fri, 06
 Sep 2019 06:22:39 -0700 (PDT)
X-Received: by 2002:a17:902:820f:: with SMTP id x15mr8783744pln.229.1567776159279;
        Fri, 06 Sep 2019 06:22:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567776159; cv=none;
        d=google.com; s=arc-20160816;
        b=Yew2kZY8lZu4GIDdsDvW7yuzVFqvVVMy/MvH0eSETdYSthOzKjunyCWOEuKpAphOjn
         zusgY6f8el4Ddk165SgNtcLSOP7+S0V102ZfLutSDzWuEVypXUgr6GL3d9P7tvLYPHQ5
         KYG1fl0Ecl+Mt2KKbpp12oQNIj+NW5sURquqaPOdmyqd61wYMhcXYwC7tTf2GN4wtkoN
         EGynTgtE1EGSaJgJUhOqD2rbqyALoXcAV05mVkS0ACMlMTx6XtfE13TTvac5VZ4I/DUL
         ASSrE228q2uVPOh4BlntDWqpVU+KZRJb7G3Qm5etCbEPoRU9NcKUkqPJlUKmbpPB7Chu
         fh9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iYkJVXuoY4l+9P736WItk8rPL+3rA0KfbpD2p0u2EMM=;
        b=QKEk4aFhrimV4bNa6jwEBG74PMQpgNs6PwsCaWfll2eLe9m7F2q+O+e8UK7yvu1RYI
         VKjRUK5xidZuVUwtE9p8f1pnykE5pmNefckikwqqkdOpQnhNE1xNDZjZAb23DaIhXQ/z
         efDIrBcQTyy4tNS4kvTEQA0Z1jGgFX2JQEQEo2DMgHXg1GXt0U+XsZ39adHMoaFluTvG
         iPWwY+zhteQpFDwxYRhFcin3Sffd7bsqr0ORgbWE1lJ7SjnOF43NzQWgGYYZ094B6s8V
         iITTSu0bkcrM59z52xEE6VVpjK3Em4cPvPKwumixhsCAzym6X/P2XLmtW5WL5uYx7LLH
         Rwcw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gdhwqgHz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id 124si4260179pgb.11.2019.09.06.06.22.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Sep 2019 06:22:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 87B85206BB;
	Fri,  6 Sep 2019 13:22:38 +0000 (UTC)
Date: Fri, 6 Sep 2019 15:22:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jessica Yu <jeyu@kernel.org>
Cc: Matthias Maennich <maennich@google.com>, linux-kernel@vger.kernel.org,
	kernel-team@android.com, arnd@arndb.de, joel@joelfernandes.org,
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com,
	will@kernel.org, yamada.masahiro@socionext.com,
	linux-kbuild@vger.kernel.org, linux-modules@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v5 10/11] usb-storage: remove single-use
 define for debugging
Message-ID: <20190906132236.GA4107@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190906103235.197072-1-maennich@google.com>
 <20190906103235.197072-11-maennich@google.com>
 <20190906125942.GA31531@linux-8ccs>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190906125942.GA31531@linux-8ccs>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gdhwqgHz;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Fri, Sep 06, 2019 at 02:59:42PM +0200, Jessica Yu wrote:
> +++ Matthias Maennich [06/09/19 11:32 +0100]:
> > USB_STORAGE was defined as "usb-storage: " and used in a single location
> > as argument to printk. In order to be able to use the name
> > 'USB_STORAGE', drop the definition and use the string directly for the
> > printk call.
> > 
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Matthias Maennich <maennich@google.com>
> 
> Greg, didn't you pick this patch up for usb-next already (for the 5.4
> merge window)? If that's the case, I could apply the series omitting
> this patch (once there are no more comments or complaints).

Yes, I already have this in my tree, but there's no problem with you
taking it in yours as I think it's needed for the one after this to
build properly.

git will handle it properly when merging :)

thanks!

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906132236.GA4107%40kroah.com.
