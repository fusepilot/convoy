module FoldersHelper

  def breadcrumbs(folder)
    locals = {:folder => folder, :root_path => folders_path, :ancestors => folder.ancestors.reverse}
    render :partial => "shared/breadcrumbs", :locals => locals
  end
end
