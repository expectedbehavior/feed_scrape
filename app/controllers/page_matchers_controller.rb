class PageMatchersController < ApplicationController

  before_filter :find_page_matcher

  PAGE_MATCHERS_PER_PAGE = 20
  
  def feed
  end

  def create
    @page_matcher = PageMatcher.new(params[:page_matcher])
    respond_to do |format|
      if @page_matcher.save
        flash[:notice] = 'PageMatcher was successfully created.'
        format.html { redirect_to @page_matcher }
        format.xml  { render :xml => @page_matcher, :status => :created, :location => @page_matcher }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page_matcher.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @page_matcher.destroy
        flash[:notice] = 'PageMatcher was successfully destroyed.'        
        format.html { redirect_to page_matchers_path }
        format.xml  { head :ok }
      else
        flash[:error] = 'PageMatcher could not be destroyed.'
        format.html { redirect_to @page_matcher }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  def index
    @page_matchers = PageMatcher.paginate(:page => params[:page], :per_page => PAGE_MATCHERS_PER_PAGE)
    respond_to do |format|
      format.html
      format.xml  { render :xml => @page_matchers }
    end
  end

  def edit
  end

  def new
    @page_matcher = PageMatcher.new
    respond_to do |format|
      format.html
      format.xml  { render :xml => @page_matcher }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.xml  { render :xml => @page_matcher }
    end
  end

  def update
    respond_to do |format|
      if @page_matcher.update_attributes(params[:page_matcher])
        flash[:notice] = 'PageMatcher was successfully updated.'
        format.html { redirect_to @page_matcher }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page_matcher.errors, :status => :unprocessable_entity }
      end
    end
  end

  private

  def find_page_matcher
    @page_matcher = PageMatcher.find(params[:id]) if params[:id]
  end

end
